#include "main.h"
#include "dac.h"
#define Vref 3300
// PA4 SPI1_NSS
// PA5 SPI1_SCK
// PA7 SPI1_MOSI

void SPI_init( void ) {
	RCC-> AHB2ENR |= (RCC_AHB2ENR_GPIOAEN);               // GPIOA: DAC NSS/SCK/SDO
	RCC-> APB2ENR |= (RCC_APB2ENR_SPI1EN);                // SPI1 port

   GPIOA->MODER &= ~(GPIO_MODER_MODE4 | GPIO_MODER_MODE5 | GPIO_MODER_MODE7);
   GPIOA->MODER |= (GPIO_MODER_MODE4_1 | GPIO_MODER_MODE5_1 | GPIO_MODER_MODE7_1);
   GPIOA->AFR[0] &= ~((0x000F << GPIO_AFRL_AFSEL4_Pos) | (0x000F << GPIO_AFRL_AFSEL5_Pos) | (0x000F << GPIO_AFRL_AFSEL7_Pos));
   GPIOA->AFR[0] &= ~((0x0005 << GPIO_AFRL_AFSEL4_Pos) | (0x0005 << GPIO_AFRL_AFSEL5_Pos) | (0x0005 << GPIO_AFRL_AFSEL7_Pos));
//   GPIOA->OTYPER &= ~(GPIO_OTYPER_OT4 | GPIO_OTYPER_OT5 | GPIO_OTYPER_OT7);
////   GPIOA->PUPDR
//   GPIOA->OSPEEDR |=((3 << GPIO_OSPEEDR_OSPEED4_Pos) | (3 << GPIO_OSPEEDR_OSPEED5_Pos) | (3 << GPIO_OSPEEDR_OSPEED7_Pos));

   SPI1->CR1 &= ~( SPI_CR1_SPE );             	// disable SPI for config
   SPI1->CR1 &= ~( SPI_CR1_RXONLY );          	// recv-only OFF
   SPI1->CR1 &= ~( SPI_CR1_LSBFIRST );        	// data bit order MSb:LSb
   SPI1->CR1 &= ~( SPI_CR1_CPOL | SPI_CR1_CPHA ); // SCLK polarity:phase = 0:0
   SPI1->CR1 |=	 SPI_CR1_MSTR;              	// MCU is SPI controller
   // CR2 (reset value = 0x0700 : 8b data)
   SPI1->CR2 &= ~( SPI_CR2_TXEIE | SPI_CR2_RXNEIE ); // disable FIFO intrpts
   SPI1->CR2 &= ~( SPI_CR2_FRF);              	// Moto frame format
   SPI1->CR2 |=	 SPI_CR2_NSSP;              	// auto-generate NSS pulse
   SPI1->CR2 |=	 SPI_CR2_DS;                	// 16-bit data
   SPI1->CR2 |=	 SPI_CR2_SSOE;              	// enable SS output
   // CR1
   SPI1->CR1 |=	 SPI_CR1_SPE;               	// re-enable SPI for ops
}

uint32_t DAC_volt_conv(uint32_t analog_val){

    //check if vref greater than 3300 mV
    if(analog_val > Vref){
        analog_val = Vref;
    }

    //convert to digital value
    uint32_t dig_val = (analog_val * 4095) / Vref;
    return dig_val;
}

void DAC_write(dig_val) {

    //check if the buffer is empty
    while(!(SPI1->SR & SPI_SR_TXE)){}

    //writing to the DAC
    SPI1->DR = 0x1000 + dig_val;
}
