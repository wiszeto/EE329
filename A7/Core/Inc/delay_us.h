/**
  ******************************************************************************
  * File: 		delay_us.h
  * Project: 	EE329-03: A3
  * Details: 	Header file for delay_us module
  * Author:		Alex Elliott
  * Date:		04-17-2023
  ******************************************************************************
  * origins:	created for EE 329 lab manual provided delay_us functions
  ******************************************************************************
  */

#ifndef INC_DELAY_US_H_
#define INC_DELAY_US_H_

#include "stm32l4xx_hal.h"

void SysTick_Init(void);
void delay_us(const uint32_t time_us);

#endif /* INC_DELAY_US_H_ */
