/*
 * file: uart.h
 * authors: Celeste Correa & Zachariah Mustar
 * date: May 18, 2023
 */

#ifndef INC_UART_H_
#define INC_UART_H_

#include "main.h"

void LPUART_init(void);
void Terminal_Init(void);
void LPUART_Print(const char* message);
void LPUART_ESC_Print(const char* word);
uint16_t Samples_Min(uint16_t *Array);
uint16_t Samples_Max(uint16_t *Array);
uint16_t Samples_Ave(uint16_t *Array);
void Update_Counts(uint16_t counts);
void Update_Volts(uint16_t voltage);
void Digit_Write(int digit);
void Terminal_Values(uint16_t *Array);

#endif /* INC_UART_H_ */
