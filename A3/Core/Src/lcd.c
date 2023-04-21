
#include "lcd.h"
#include "delay.h"

void LCD_init(void);
void Nybble();
void command(uint8_t command);
void write(char letter);
void lcd_put_cur(uint16_t row, uint16_t col);

void LCD_init(void)
{
delay_us( 100000 ); // power-up wait 40 ms
RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOAEN); // enable GPIOA clock on bus

//Making control pins output mode bits(01)
control_pins->MODER &= ~(GPIO_MODER_MODE1 | GPIO_MODER_MODE2 | GPIO_MODER_MODE3 | GPIO_MODER_MODE4 | GPIO_MODER_MODE5 | GPIO_MODER_MODE6 | GPIO_MODER_MODE7); // clear bits for PA
control_pins->MODER |= (GPIO_MODER_MODE1_0 |GPIO_MODER_MODE2_0 | GPIO_MODER_MODE3_0 |GPIO_MODER_MODE4_0 | GPIO_MODER_MODE5_0 | GPIO_MODER_MODE6_0 | GPIO_MODER_MODE7_0); // set up DB4 to DB7, RS, RW, E as outputs
control_pins->OTYPER &= ~(GPIO_OTYPER_OT1 | GPIO_OTYPER_OT2 | GPIO_OTYPER_OT3 | GPIO_OTYPER_OT4| GPIO_OTYPER_OT5| GPIO_OTYPER_OT6| GPIO_OTYPER_OT7);
control_pins->OSPEEDR |= ((3 << GPIO_OSPEEDR_OSPEED1_Pos) | (3 << GPIO_OSPEEDR_OSPEED2_Pos)| (3 << GPIO_OSPEEDR_OSPEED3_Pos)| (3 << GPIO_OSPEEDR_OSPEED4_Pos)| (3 << GPIO_OSPEEDR_OSPEED5_Pos)| (3 << GPIO_OSPEEDR_OSPEED6_Pos)| (3 << GPIO_OSPEEDR_OSPEED7_Pos));
control_pins->BRR = ( D4 | D5 | D6 | D7 | EN | RW | RS ); //Initializes data to all 0

delay_us( 100000 ); // power-up wait 40 ms
command(0x30);
delay_us( 200 ); // power-up wait 8 ms
command(0x30);
delay_us( 200 ); // power-up wait 8 ms
command(0x30);
delay_us( 200 ); // power-up wait 8 ms
command(0x20);


}

void Nybble()
{
control_pins->BSRR = EN;
delay_us( 2500 ); // wait 1 ms
control_pins->BRR = EN;
delay_us( 2500 ); // wait 1 ms
}

void command(uint8_t command)
{
	uint16_t GPIO_Pin[] = {D4, D5, D6, D7};
	control_pins->BRR = (RS | RW); // set RS and RW to zero

	for (int i = 0; i < 4; i++) {
	    if ((command >> i) & 0x01) {
	    	control_pins->BSRR = GPIO_Pin[i];
	    } else {
	    	control_pins->BRR = GPIO_Pin[i];
	    }
	}

	delay_us( 500000 );
	Nybble(); //Send pulse
	control_pins->ODR &= ~( (D4 | D5 | D6 | D7) ); // Clears registers

	command = command >> 4;
	for (int i = 0; i < 4; i++) {
		    if ((command >> i) & 0x01) {
		    	control_pins->BSRR = GPIO_Pin[i];
		    } else {
		    	control_pins->BRR = GPIO_Pin[i];
		    }
		}
	delay_us( 500000 );
	Nybble(); //Send pulse
	control_pins->ODR &= ~( (D4 | D5 | D6 | D7) ); // Clears registers
}

void write(char letter)
{
	uint8_t c = letter;
	uint8_t c2 = c >> 4;
	uint16_t GPIO_Pin[] = {D4, D5, D6, D7};
	for (int i = 0; i < 4; i++) {
		    if ((c2 >> i) & 0x01) {
		    	control_pins->BSRR = GPIO_Pin[i];
		    } else {
		    	control_pins->BRR = GPIO_Pin[i];
		    }
		}

	control_pins->BSRR = (RS); // set RS and RW to zero
	control_pins->BRR = (RW); // set RS and RW to zero
	delay_us( 500000 );
	Nybble();
	control_pins->ODR &= ~( (D4 | D5 | D6 | D7) ); // Clears registers
	//c = c >> 4;

	for (int i = 0; i < 4; i++) {
			    if ((c >> i) & 0x01) {
			    	control_pins->BSRR = GPIO_Pin[i];
			    } else {
			    	control_pins->BRR = GPIO_Pin[i];
			    }
			}
	delay_us( 500000 );
	Nybble();
	control_pins->BRR = (RS); // set RS and RW to zero
	control_pins->ODR &= ~( (D4 | D5 | D6 | D7) ); // Clears registers
}

void lcd_put_cur(uint16_t row, uint16_t col)
{
    switch (row)
    {
        case 0:
            col |= 0x80;
            break;
        case 1:
            col |= 0xC0;
            break;
    }
    command(col);
}
