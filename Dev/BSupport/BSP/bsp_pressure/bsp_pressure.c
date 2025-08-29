/*
 * bsp_rs485.c
 *
 *  Created on: Aug 28, 2025
 *      Author: Khoa Duong
 */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Include~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include "stdbool.h"

#include "stm32f765xx.h"
#include "stm32f7xx_ll_gpio.h"

#include "board.h"

#include "bsp_pressure.h"

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Defines ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Prototype ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Enum ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Struct ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Class ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Private Types ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Variables ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Prototype ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Public Variables ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// i2c_stdio_typedef Sensor_I2C;
// #define			  SENSOR_DATA_ARRAY_SIZE 2 * 16
// I2C_data_t 		  g_sensor_I2C_data_array[SENSOR_DATA_ARRAY_SIZE];

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Public Function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
void bsp_pressure_init_i2c()
{
//    I2C_Init
// 	(
// 		&Sensor_I2C,
// 		EXP_I2C_SENSOR_HANDLE,
// 		EXP_I2C_SENSOR_IRQ,
// 		g_sensor_I2C_data_array,
// 		SENSOR_DATA_ARRAY_SIZE
// 	);

	LL_GPIO_SetOutputPin(SENSOR2_EN_GPIO_Port, SENSOR2_EN_Pin);
	LL_GPIO_SetOutputPin(SENSOR1_EN_GPIO_Port, SENSOR1_EN_Pin);
	LL_mDelay(100);
}

uint8_t bsp_init_pressure()
{
   return BMP390_init();
}

uint8_t bsp_read_pressure()
{
	return BMP390_read_value(SENSOR_READ_BMP390);
}

bool bsp_is_pressure_init_complete()
{
    return Is_BMP390_Init_Complete();
}

bool bsp_is_pressure_read_complete()
{
    return Is_BMP390_Read_Complete();
}

// void bsp_pressure_i2c_ev_irq(void)
// {
// 	I2C_EV_IRQHandler();
// }

// void bsp_pressure_i2c_er_irq(void)
// {
// 	I2C_ER_IRQHandler();
// }

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ End of the program ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */