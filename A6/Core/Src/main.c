
#include "main.h"


void SystemClock_Config(void);
void LPUART_init();
void LPUART_Print( const char* message );
void LPUART_Print_Char(char ch);

int main(void)
{

  HAL_Init();
  SystemClock_Config();
  LPUART_init();

  // Escape codes to move the cursor down 3 lines and to the right 5 spaces
  LPUART_ESC_Print("\033[3B\033[5C");

  // Print "All good students read the"
  LPUART_Print("All good students read the");

  // Escape codes to move the cursor down 1 line and to the left 21 spaces
  LPUART_ESC_Print("\033[1B\033[21D");

  while (1)
  {
//	  const char* message = "Hello, World!";
//	  LPUART_Print(message);
	  LPUART_Print_Char('a');
	  HAL_Delay(1000);
  }

}

void LPUART_Print_Char(char ch) {
    while(!(LPUART1->ISR & USART_ISR_TXE));   // wait for empty transmit buffer
    LPUART1->TDR = ch;                        // send the character
}

void LPUART_Print(const char* message) {
    uint16_t iStrIdx = 0;
    while(message[iStrIdx] != '\0') {
        LPUART_Print_Char(message[iStrIdx]);
        iStrIdx++;
    }
}
void LPUART_ESC_Print( const char* message ) {
  uint16_t iStrIdx = 0;
  while( message[iStrIdx] != 0 )  {
    while(!(LPUART1->ISR & USART_ISR_TXE));   // wait for empty transmit buffer
    LPUART1->TDR = message[iStrIdx];          // send this character
    iStrIdx++;                                // advance index to next char.
  }
}
void LPUART_init() {
	PWR->CR2 |= (PWR_CR2_IOSV);              // power avail on PG[15:2] (LPUART1)
	RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOGEN);   // enable GPIOG clock
	RCC->APB1ENR2 |= RCC_APB1ENR2_LPUART1EN; // enable LPUART clock bridge
	GPIOG->MODER &= ~(GPIO_MODER_MODE5 | GPIO_MODER_MODE6 | GPIO_MODER_MODE7 | GPIO_MODER_MODE8);
	GPIOG->MODER |=(GPIO_MODER_MODE5_1 | GPIO_MODER_MODE6_1 | GPIO_MODER_MODE7_1 | GPIO_MODER_MODE8_1);
	GPIOG->AFR[0] &= ~((0x000F << GPIO_AFRL_AFSEL5_Pos) |
	                       (0x000F << GPIO_AFRL_AFSEL6_Pos) |
	                       (0x000F << GPIO_AFRL_AFSEL7_Pos));
	GPIOG->AFR[1] &= ~(0x000F << GPIO_AFRH_AFSEL8_Pos);

	GPIOG->AFR[0] |= ((0x0008 << GPIO_AFRL_AFSEL5_Pos) |
	                      (0x0008 << GPIO_AFRL_AFSEL6_Pos) |
	                      (0x0008 << GPIO_AFRL_AFSEL7_Pos));

	GPIOG->AFR[1] |= (0x0008 << GPIO_AFRH_AFSEL8_Pos);
	/* USER: configure GPIOG registers MODER/PUPDR/OTYPER/OSPEEDR then
	   select AF mode and specify which function with AFR[0] and AFR[1] */
	LPUART1->CR1 &= ~(USART_CR1_M1 | USART_CR1_M0); // 8-bit data
	LPUART1->CR1 |= USART_CR1_UE;                   // enable LPUART1
	LPUART1->CR1 |= (USART_CR1_TE | USART_CR1_RE);  // enable xmit & recv
	LPUART1->CR1 |= USART_CR1_RXNEIE;        // enable LPUART1 recv interrupt
	LPUART1->ISR &= ~(USART_ISR_RXNE);       // clear Recv-Not-Empty flag
	LPUART1->BRR = 17778;
	NVIC->ISER[2] = (1 << (LPUART1_IRQn & 0x1F));   // enable LPUART1 ISR
	__enable_irq();                          // enable global interrupts

}


void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
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
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
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
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */