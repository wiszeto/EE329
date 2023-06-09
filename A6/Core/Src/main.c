/**
 ******************************************************************************
 * @file     : main.c
 * project   : EE 329 A6
 * details   : UART Lab: Printing escape characters and changing text colors
 * authors   : Wilson Szeto
 * 	         : Grace Paladichuk
 * date      : 5/20/2023
 ******************************************************************************
 */

#include "main.h"
#include "uart.h"

void SystemClock_Config(void);

int main(void) {

	HAL_Init();
	SystemClock_Config();
	LPUART_init();
	LCD_init();

	// Escape codes to move the cursor down 3 lines and to the right 5 spaces
	LPUART_ESC_Print("\033[3B\033[5C");

	LPUART_Print("All good students read the");

	LPUART_ESC_Print("\033[B\033[21D");

	LPUART_ESC_Print("\033[5m");

	LPUART_Print("Reference Manual");

	LPUART_ESC_Print("\033[H"); //Move cursor to the top left position

	LPUART_ESC_Print("\033[0m");

	LPUART_Print("Input: ");

	while (1) {

	}

}

// UART interrupt service routine
//void LPUART1_IRQHandler(void) {
//	if (LPUART1->ISR & USART_ISR_RXNE) { // check if there is new data in the UART receiver
//		char charRecv = LPUART1->RDR;  // read the received character
//		switch (charRecv) {
//		case 'R': // if received character is 'R'
//			LPUART_ESC_Print("\033[31m"); // change color to red
//			while (!(LPUART1->ISR & USART_ISR_TXE))
//				;  // wait for empty TX buffer
//			LPUART1->TDR = charRecv; // send received character
//			break;
//		case 'G':
//			LPUART_ESC_Print("\033[32m"); // change color to green
//			while (!(LPUART1->ISR & USART_ISR_TXE))
//				;  // wait for empty TX buffer
//			LPUART1->TDR = charRecv; // send received character
//			break;
//		case 'B':
//			LPUART_ESC_Print("\033[34m"); // change color to blue
//			while (!(LPUART1->ISR & USART_ISR_TXE))
//				;  // wait for empty TX buffer
//			LPUART1->TDR = charRecv; // send received character
//			break;
//		case 'W':
//			LPUART_ESC_Print("\033[37m"); // change color to white
//			while (!(LPUART1->ISR & USART_ISR_TXE))
//				;  // wait for empty TX buffer
//			LPUART1->TDR = charRecv; // send received character
//			break;
//		default: // if received character is none of the above
//			while (!(LPUART1->ISR & USART_ISR_TXE))
//				;  // wait for empty TX buffer
//			LPUART1->TDR = charRecv; // send received character
//			break;
//		}  // end switch
//	}
//}

void SystemClock_Config(void) {
	RCC_OscInitTypeDef RCC_OscInitStruct = { 0 };
	RCC_ClkInitTypeDef RCC_ClkInitStruct = { 0 };

	/** Configure the main internal regulator output voltage
	 */
	if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1)
			!= HAL_OK) {
		Error_Handler();
	}

	/** Initializes the RCC Oscillators according to the specified parameters
	 * in the RCC_OscInitTypeDef structure.
	 */
	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
	RCC_OscInitStruct.MSIState = RCC_MSI_ON;
	RCC_OscInitStruct.MSICalibrationValue = 0;
	RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
	if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK) {
		Error_Handler();
	}

	/** Initializes the CPU, AHB and APB buses clocks
	 */
	RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
			| RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
	RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
	RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
	RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

	if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK) {
		Error_Handler();
	}
}

/**
 * @brief  This function is executed in case of error occurrence.
 * @retval None
 */
void Error_Handler(void) {
	__disable_irq();
	while (1) {
	}
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
}
#endif /* USE_FULL_ASSERT */

