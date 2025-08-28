/*
 * bsp_rs485.c
 *
 *  Created on: Aug 28, 2025
 *      Author: Khoa Duong
 */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Include~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include "board.h"

#include "bsp_rs485.h"

#include "uart_stdio.h"

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Defines ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#define RS485_UART_BUFFER_SIZE	256

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Prototype ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Enum ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Struct ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Class ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Private Types ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Variables ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Khởi tạo RX & TX buffer cho RS485
static circular_char_buffer_t rs485_rx_buffer;
static circular_char_buffer_t rs485_tx_buffer;

static uint8_t rs485_rx_static_buffer[RS485_UART_BUFFER_SIZE];
static uint8_t rs485_tx_static_buffer[RS485_UART_BUFFER_SIZE];

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Prototype ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Public Variables ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
UART_stdio_t rs485_stdio;

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Public Function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
void bsp_init_rs485(void)
{
    // Khởi tạo ring buffer cho TX, RX buffer
    circular_char_buffer_init(&rs485_rx_buffer, rs485_rx_static_buffer, RS485_UART_BUFFER_SIZE);
	circular_char_buffer_init(&rs485_tx_buffer, rs485_tx_static_buffer, RS485_UART_BUFFER_SIZE);

    // Init USART kết nối với RS485
    uart_stdio_init(&rs485_stdio, EXP_UART_RS485_HANDLE, &rs485_rx_buffer, &rs485_tx_buffer);
}

void bsp_rs485_uart_irq(void)
{
	uart_stdio_rx_callback(&rs485_stdio);
	uart_stdio_tx_callback(&rs485_stdio);
	// EXP_UART_RS485_HANDLE->ICR = 0xFFFFFFFF;
}

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ End of the program ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */