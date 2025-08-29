/*
 * system_log.c
 *
 *  Created on: Jul 14, 2025
 *      Author: Admin
 */
#include "stdio.h"

#include "lwl.h"
#include "app_signals.h"
#include "system_log.h"
#include "error_codes.h"
#include "dbc_assert.h"
#include "date_time.h"
#include "configs.h"
#include "wdg.h"

//#include "adc_monitor.h"
#include "bsp_ntc.h"
#include "bsp_rs485.h"
#include "bsp_pressure.h"

//DBC_MODULE_NAME("system_log")

#define SYSTEM_LOG_NUM_EVENT 		1
#define DEFAULT_POLL_TIME 			1000

system_log_task_t system_log_task_inst;
circular_buffer_t system_log_event_queue = {0};

static system_log_evt_t system_log_current_event = {0};
static system_log_evt_t system_log_event_buffer[SYSTEM_LOG_NUM_EVENT];

static void system_log_task_init(system_log_task_t * const me, system_log_evt_t * const e);

enum {
	INIT,
	OPERATION
};
uint32_t sensor_state = INIT;
//static void system_log_task_dispatch(system_log_task_t * const me, system_log_evt_t * const e);
static state_t system_log_normal_state_handler(system_log_task_t * const me, system_log_evt_t * const e);

static void system_log_house_keeping(system_log_task_t * const me);
static void double_to_string(double value, char *buffer, uint8_t precision);

void system_log_task_ctor(system_log_task_t * const me, system_log_task_init_t * const init)
{
	SST_Task_ctor(&me->super, (SST_Handler)system_log_task_init, (SST_Handler)system_log_normal_state_handler, (SST_Evt*)init->current_evt, init->event_buffer);
	SST_TimeEvt_ctor(&me->system_log_timer, EVT_SYSTEM_LOG_POLL, &me->super);
	SST_TimeEvt_ctor(&me->i2c_timer, EVT_I2C_POLL, &me->super);
	me->state 	 	 = init->init_state;
	me->interval 	 = DEFAULT_POLL_TIME;
	me->ntc_log_mask = 0xFF;
	SST_TimeEvt_disarm(&me->system_log_timer);
}

void system_log_task_ctor_singleton()
{
	circular_buffer_init(&system_log_event_queue, (uint8_t *)system_log_event_buffer, sizeof(system_log_event_buffer), SYSTEM_LOG_NUM_EVENT, sizeof(system_log_evt_t));

	system_log_task_init_t init =
	{
		.current_evt  = &system_log_current_event,
		.event_buffer = &system_log_event_queue,
		.init_state   = system_log_normal_state_handler
	};

	system_log_task_ctor(&system_log_task_inst,&init);
}

static void system_log_task_init(system_log_task_t * const me, system_log_evt_t * const e)
{
	// SANG -->
	lwl_start();
	SST_TimeEvt_arm(&me->system_log_timer, me->interval, me->interval);
	// SST_TimeEvt_arm(&me->i2c_timer, 10, 10);
	// SANG -->

	// KHOA -->
	bsp_init_rs485();
	uart_stdio_active(&rs485_stdio);

	bsp_pressure_init_i2c();
	bsp_init_pressure();

	bsp_ntc_adc_init();
	// KHOA -->
}

void system_log_task_start(uint8_t priority)
{
	SST_Task_start(&system_log_task_inst.super, priority);
}

static state_t system_log_normal_state_handler(system_log_task_t * const me, system_log_evt_t * const e)
{
	switch (e->super.sig)
	{
	// case EVT_I2C_POLL:
	// 	bsp_read_pressure();
	// 	break;

	case EVT_SYSTEM_LOG_POLL:
		// wdg_feed(WDG_SYSTEM_LOG_ID);
		bsp_read_pressure();
		system_log_house_keeping(me);
	}
	return HANDLED_STATUS;
}


void system_log_house_keeping(system_log_task_t * const me)
{
	// SANG -->
	// Khi người dùng nhập lệnh MIN_Handler_SET_NTC_CONTROL_CMD để bật kênh đọc kênh NTC
	// Lệnh đó sẽ cập nhật trường ntc_log_mask trong biến "me".
	// Lệnh dưới sẽ kiểm tra 8 kênh, kênh nào được bật thì gửi ra shell tương ứng kèm thời gian và ngày tháng năm
	// uint8_t days, hours, minutes, seconds;
	// date_time_get(&days, &hours, &minutes, &seconds);
	// LWL(LWL_EXP_TIMESTAMP, LWL_1(days), LWL_1(hours), LWL_1(minutes), LWL_1(seconds));

	// for (uint8_t i = 0; i < 8; i++)
	// {
	// 	if (me->ntc_log_mask & (0x01 << i))
	// 	{
	//		LWL(LWL_EXP_TEMP_SINGLE_NTC, LWL_1(i), LWL_2(bsp_ntc_get_temperature(i)));
	// 	}
	// }
	// SANG -->

	// KHOA -->
	char fractional_string[16] = {0};

	double_to_string(Sensor_Pressure, fractional_string, 3);
	
	uart_stdio_printf(&rs485_stdio, "> P: %s Pa\n\r", fractional_string);

	uart_stdio_printf(&rs485_stdio, "> T: ");

	for (uint8_t i = 0; i < 8; i++)
	{
		if (me->ntc_log_mask & (0x01 << i))
		{
			uart_stdio_printf(&rs485_stdio, "%d: %d, ", i, bsp_ntc_get_temperature(i));
		}
	}

	uart_stdio_printf(&rs485_stdio, "\n\r");
	// KHOA -->
}

void system_log_set_interval(uint32_t interval)
{
	system_log_task_inst.interval = interval;
}

void system_log_enable()
{
	SST_TimeEvt_arm(&system_log_task_inst.system_log_timer, system_log_task_inst.interval, system_log_task_inst.interval);
}

void system_log_disable()
{
	SST_TimeEvt_disarm(&system_log_task_inst.system_log_timer);
}

void system_log_task_set_ntc_log_mask(system_log_task_t *const me, uint8_t mask)
{
	me->ntc_log_mask = mask;
}

static void double_to_string(double value, char *buffer, uint8_t precision)
{
    // Handle negative numbers
    if (value < 0)
	{
        *buffer++ = '-';
        value = -value;
    }

    // Extract the integer part
    uint32_t integer_part  = (uint32_t)value;
    double fractional_part = value - integer_part;

    // Convert integer part to string
    sprintf(buffer, "%ld", integer_part);
    while (*buffer) buffer++; // Move pointer to the end of the integer part

    // Add decimal point
    if (precision > 0)
	{
        *buffer++ = '.';

        // Extract and convert the fractional part
        for (uint8_t i = 0; i < precision; i++)
		{
            fractional_part *= 10;
            uint8_t digit = (uint8_t)fractional_part;
            *buffer++ = '0' + digit;
            fractional_part -= digit;
        }
    }

    // Null-terminate the string
    *buffer = '\0';
}