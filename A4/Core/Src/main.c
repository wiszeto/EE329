
#include "main.h"
#include "lcd.h"
#include "keypad.h"
#include "delay.h"

RNG_HandleTypeDef hrng; //you have to go in to your .ioc and in security, check RNG

void SystemClock_Config(void);
static void MX_RNG_Init(void);

int main(void)
{
	int random_number;
	int reset_state = 1;

  HAL_Init();
  SystemClock_Config();
  MX_RNG_Init();
  SysTick_Init();
  LCD_init();
  keypad_init();


  RCC->AHB2ENR |= RCC_AHB2ENR_GPIOCEN;	//GPIOC clock init
  RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN;	//GPIOB clock init
  RCC->AHB2ENR |= RCC_AHB2ENR_RNGEN;	//RNG clock init

  GPIOB->MODER &= ~(GPIO_MODER_MODE7);	//LD2 clear
  GPIOB->MODER |= (GPIO_MODER_MODE7_0); //LD2 output mode

  GPIOC->MODER &= ~(GPIO_MODER_MODE0);
  GPIOC->MODER |= (GPIO_MODER_MODE0_0);
  GPIOC->MODER &= ~(GPIO_MODER_MODE1);
  GPIOC->MODER |= (GPIO_MODER_MODE1_0);
  GPIOC->MODER &= ~(GPIO_MODER_MODE2);
  GPIOC->MODER |= (GPIO_MODER_MODE2_0);
  GPIOC->MODER &= ~(GPIO_MODER_MODE3);
  GPIOC->MODER |= (GPIO_MODER_MODE3_0);

  RNG->CR |= (RNG_CR_RNGEN | RNG_CR_IE); //RNG turn on interrupt mode

  delay_us(100);
    str_write("EE 329 A4 REACT "); // write EE 329 A3 TIMER to first line
    delay_us(100);
    lcd_set_cursor_position(1, 0); // set cursor to second row, first column
    delay_us(100);
    str_write("PUSH SW TO TRIG "); // write *=SET #=GO --:-- to second line
  while (1)
  {

	  while (reset_state) {
	        char star_check = keypad_read(4, 3); // checks if asterisk is pushed to get out of reset state
	        if (star_check == '*') { // Checks if button is pushed
	          reset_state = 0; // takes me out of reset state allows me to take inputs
	          lcd_set_cursor_position(1, 11); // set cursor to hmin
	          delay_us(1000000);              // delay for next press
	        }
	      }


		while (!(RNG->SR & RNG_SR_DRDY));
		random_number = RNG->DR;
		if (random_number > 0 ){
			GPIOB->BSRR = GPIO_PIN_7;
			GPIOC->ODR = random_number;
			delay_us(10000);
		}
  }

}

void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};


  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }

  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

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


static void MX_RNG_Init(void)
{

  hrng.Instance = RNG;
  if (HAL_RNG_Init(&hrng) != HAL_OK)
  {
    Error_Handler();
  }

}

void Error_Handler(void)
{

  __disable_irq();
  while (1)
  {
  }

}

#ifdef  USE_FULL_ASSERT

void assert_failed(uint8_t *file, uint32_t line)
{

}
#endif
