
int main(void)
{
//hardware clock stuff
SysTick_Init();
//output config stuff
outputConfig();
LCD_init();
LCD_write_char('A');
while (1)
{
}
}
//--------------------------------------------------------------------------------------------
/*
* LCD.c
*
* Created on: Apr 17, 2023
* Author: savella
*/
#include "main.h"
#include "LCD.h"
void SystemClock_Config(void);
//copied and pasted
void SysTick_Init(void) {
SysTick->CTRL |= (SysTick_CTRL_ENABLE_Msk | // enable SysTick Timer
SysTick_CTRL_CLKSOURCE_Msk); // select CPU clock
SysTick->CTRL &= ~(SysTick_CTRL_TICKINT_Msk); // disable interrupt
}
// delay in microseconds using SysTick timer to count CPU clock cycles
// do not call with 0 : error, maximum delay.
// careful calling with small nums : results in longer delays than specified:
// e.g. @4MHz, delay_us(1) = 10=15 us delay.
void delay_us(const uint32_t time_us) {
// set the counts for the specified delay
SysTick->LOAD = (uint32_t)((time_us * (SystemCoreClock / 1000000)) - 1);
SysTick->VAL = 0; // clear timer count
SysTick->CTRL &= ~(SysTick_CTRL_COUNTFLAG_Msk); // clear count flag
while (!(SysTick->CTRL & SysTick_CTRL_COUNTFLAG_Msk)); // wait for flag
}
//End of copied and pasted
void outputConfig(){ //configuring output bits PB0, PB1, PB2, PB3, PB4, PB5, PB6, PB8, PB9, PB10, PB11 --> columns
RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOBEN);
LCD_PORT->MODER &= ~(GPIO_MODER_MODE0 | GPIO_MODER_MODE1| GPIO_MODER_MODE2| GPIO_MODER_MODE3| GPIO_MODER_MODE9| GPIO_MODER_MODE10| GPIO_MODER_MODE11);//sets each mode to 0
LCD_PORT->MODER |= (GPIO_MODER_MODE0_0 | GPIO_MODER_MODE1_0 | GPIO_MODER_MODE2_0 | GPIO_MODER_MODE3_0|GPIO_MODER_MODE9_0| GPIO_MODER_MODE10_0| GPIO_MODER_MODE11_0);
LCD_PORT->OTYPER &= ~(GPIO_OTYPER_OT0 | GPIO_OTYPER_OT1 | GPIO_OTYPER_OT2 | GPIO_OTYPER_OT3| GPIO_OTYPER_OT9| GPIO_OTYPER_OT10| GPIO_OTYPER_OT11);
for (int i = 0; i<40; i++) {
delay_us(1000);
}
//Possible
LCD_PORT->PUPDR &= ~(GPIO_PUPDR_PUPD0 | GPIO_PUPDR_PUPD1 | GPIO_PUPDR_PUPD2 | GPIO_PUPDR_PUPD3 | GPIO_PUPDR_PUPD9| GPIO_PUPDR_PUPD10| GPIO_PUPDR_PUPD11);
LCD_PORT->OSPEEDR |= ((3 << GPIO_OSPEEDR_OSPEED0_Pos)|
(3 << GPIO_OSPEEDR_OSPEED1_Pos)|
(3 << GPIO_OSPEEDR_OSPEED2_Pos)|
(3 << GPIO_OSPEEDR_OSPEED3_Pos)|
(3 << GPIO_OSPEEDR_OSPEED9_Pos)|
(3 << GPIO_OSPEEDR_OSPEED10_Pos)|
(3 << GPIO_OSPEEDR_OSPEED11_Pos));
LCD_PORT->BRR = ( DB4 | DB5 | DB6 | DB7 | LCD_EN | LCD_RW | LCD_RS ); //Initializes data to all 0

}
//COPIED AND PASTED FROM LAB MANUAL
void LCD_init( void ) { // RCC & GPIO config removed - leverage A1, A2 code
delay_us( 100000 ); // power-up wait 40 ms
for ( int idx = 0; idx < 3; idx++ ) { // wake up 1,2,3: DATA = 0011 XXXX
LCD_command(0x30); // HI 4b of 8b cmd, low nibble = X //was changed from 0x30 to 0x03
delay_us( 200 );
}
LCD_command(0x28); //function set: 4bit/2line
/*
* RHUSHAB's LOGIC
* display mode setup: on cursor on
* entry mode instruction; enable increment every write? this one could break code
* clears
* returns home
* display control back on; cursor, blinks cursor again
*/
LCD_command(0x0F); //Display ON/OFF
delay_us(5000);
LCD_command(0x06); //Entry mode set cursor moving right, turn on display, no display shift
delay_us(5000);
LCD_command(0x01); //Clears shit from Rhushab
delay_us(5000);
LCD_command(0x02); //Return Home from Rhushab
delay_us(5000);
LCD_command(0x0F); //Display on with cursors and blinking cursor
//STUFF above succesffuly cleared everything, set cursor back to top right: is it AC 00?
//Problem: 2 row not displaying
//PROBLEM: cursor moving right-to-left-
// OLD ORDEr FOR
// LCD_command(0x10); //set cursor
// delay_us( 500000); // >5 ms delay to wake up (added an extra 0) OVERKILL?
// LCD_command(0x08); //display on; blinking cursor
// delay_us( 500000); // >5 ms delay to wake up (added an extra 0) OVERKILL?
// LCD_command(0x06); //change back to 7 eventually
// delay_us( 500000); // >5 ms delay to wake up (added an extra 0) OVERKILL?
// LCD_command(0x80); //set cursor
// delay_us( 500000); // >5 ms delay to wake up (added an extra 0) OVERKILL?
}
//pulses ENABLE signal to write data
void LCD_pulse_ENA( void ) {
LCD_PORT->BSRR = LCD_EN;
delay_us( 50 );
LCD_PORT->BRR = LCD_EN;
delay_us( 50 );
}
void LCD_command( uint8_t command ) {
// send command to LCD in 4-bit instruction mode
// HIGH nibble then LOW nibble, timing sensitive
LCD_PORT->ODR &= ~( (DB4 | DB5 | DB6 | DB7) ); // Clears registers
LCD_PORT->ODR |= ( (0xF0 & command) >> 4); // sets HIGH nibble to register
delay_us( 500000 );
LCD_pulse_ENA( ); //latch HIGH NIBBLE
LCD_PORT->ODR &= ~( (DB4 | DB5 | DB6 | DB7) ); // clear
//Added mask to ensure isolated lower nibble. Redundant?
LCD_PORT->ODR |= (0x0F & command); // sets LOW nibble to register
delay_us( 500000 );
LCD_pulse_ENA( ); // latch LOW NIBBLE
}
void LCD_write_char( char letter ) {//changed from uint8_t to char
// calls LCD_command() w/char data; assumes all ctrl bits set LO in LCD_init()
LCD_PORT->BSRR = (LCD_RS); // RS = HI for data to address
delay_us( 500000 );
LCD_command( letter ); // character to print
LCD_PORT->BRR = (LCD_RS); // RS = LO
}
//END COPY AND PASTE