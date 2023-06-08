/*
 * FP_process.c
 *
 *  Created on: Jun 5, 2023
 *      Author: james
 */

#include "main.h"
#include "FP_process.h"
#include "fingerprint.h"
#include "delay.h"
#include "lcd.h"

//global variables
uint8_t MEM_GLOBAL;	//FP ID# LOCATION IN FLASH MEMORY
uint16_t FP_ID; //FOUND FP ID# LOCATION IN FLASH MEMORY
char USER_INPUT_NAME[MAX_FP][16];//MAX_FP = max # of users; username 16 char max

//checks if FP is connected and communicating properly
//does not properly find it will need to look at bytes when it is not being sent proper
void FP_check(void) {
	lcd_set_cursor_position(0, 0);
	str_write("Booting Fngrprnt");
	lcd_set_cursor_position(1, 0);
	str_write("Scanner         ");
	delay_us(1000000);		//1 second delay to read the message

	//makes each element in global empty
//	for (int i = 0; i < MAX_FP; i++) {
//		for (int j = 0; j < 16; j++) {
//			USER_INPUT_NAME[i][j] = ' ';
//		}
//	}

	handshake();
	while (ConfirmationCode != 0x00) {
		handshake();
		lcd_set_cursor_position(0, 0);
		str_write("FP Scanner not  ");
		lcd_set_cursor_position(1, 0);
		str_write("found reconnect ");
	}
	//sets other parameters: 2nd argument changes settings
	SetSysPara(4, 6);	//baud rate: 6* 9600 = 57600
	SetSysPara(5, 1);   //security level: 1 - 5 lowest to highest
	SetSysPara(6, 3);	//package length: 0 - 3 lowest to highest
	lcd_set_cursor_position(0, 0);
	str_write("FP Scanner      ");
	lcd_set_cursor_position(1, 0);
	str_write("Found           ");
	delay_us(1000000); 		//1 second delay to read the message
	lcd_set_cursor_position(0, 0);
	str_write("                ");
	lcd_set_cursor_position(1, 0);
	str_write("                ");
}

void FP_enroll(void) {
	/* Order of Operations
	 * 1. Get user to type name associated with FP
	 * 2. Get User Input twice
	 */
	FP_enroll_start: genImg();	//to get ready to take an input

	//add section functionality here

//	uint8_t mem_local = 0;	//initializes mem local
	//update mem_local to equal global ID variable

//	while (number_of_fp_per_section < MAX_FP_PER_SECTION) {	//takes 10 user inputs: 0-9

	for (int buff_local = 1; buff_local <= 2; buff_local++) {
		while (ConfirmationCode == 0x02) {	//No finger detected get finger
			if (buff_local == 1) {
				lcd_set_cursor_position(0, 0);
				str_write("Place finger    ");
				lcd_set_cursor_position(1, 0);
				str_write("                ");
			} else if (buff_local == 2) {
				lcd_set_cursor_position(0, 0);
				str_write("Place finger ");
				lcd_set_cursor_position(1, 0);
				str_write("again         ");
			}
			genImg();	//checks fingerprint
		}
		Img2Tz(buff_local);

		while (ConfirmationCode == 0x00) { //to wait til user removes finger
			lcd_set_cursor_position(0, 0);
			str_write("Got Finger!     ");
			lcd_set_cursor_position(1, 0);
			str_write("Remove Finger   ");
			genImg(); //checks fingerprint
		}

	}
	regMode(); //generates FP template to store to memory checks if they match as well

	if (ConfirmationCode == 0x00) { //Fingerprint matches!
		lcd_set_cursor_position(0, 0);
		str_write("FP Match Welcome");
//		//want to add MEM_GLOBAL 2 digit functionality?
//		write(MEM_GLOBAL + '0');	//ONLY FOR DEBUGGING

		store(1, MEM_GLOBAL); //stores ID to memory, updates ID for each user enrolled
		lcd_set_cursor_position(1, 0);

//		prints username onto LCD	//
		for (int i = 0; i < 16; i++){
			write(USER_INPUT_NAME[MEM_GLOBAL][i]); //NEED TO VERIFY IF IT WORKS
		}

		MEM_GLOBAL++;	//updates global array

	} else {
		lcd_set_cursor_position(0, 0);
		str_write("FP mismatch :(  ");
		lcd_set_cursor_position(1, 0);
		str_write("Redo Input      ");

		while (1) {	//No finger detected get finger
			genImg();	//checks fingerprint
			if (ConfirmationCode == 0x00)
				goto FP_enroll_start;
//			lcd_set_cursor_position(1, 0);
//			str_write("Redo Input      ");
		}

	}

//	lcd_set_cursor_position(0, 0);
//	str_write("Reached Max Reg ");
//	lcd_set_cursor_position(1, 0);
//	str_write(" For Section = ");
//	write(section_num + '0');

}

//Searches through data base by asking for user input.
//Returns address found or -1 if error
int FP_search(void) {
	//FPIDrdy = 0;
	lcd_set_cursor_position(0, 0);
	str_write("Place Finger    ");
	lcd_set_cursor_position(1, 0);
	str_write("to find it      ");
	genImg();

	while (1) {	//No finger detected get finger
		genImg();	//checks fingerprint
		if (ConfirmationCode == 0x00)
			break;
		//for error handling
		else if ((ConfirmationCode == 0x01) | (ConfirmationCode == 0x03)) {
			lcd_set_cursor_position(0, 0);
			str_write("Place fngr again");
			lcd_set_cursor_position(1, 0);
			str_write("Error clean fngr");
		}
	}
	Img2Tz(1);	//stores in buffer 1

	lcd_set_cursor_position(0, 0);
	str_write("Searching Database");
	lcd_set_cursor_position(1, 0);
	str_write("        PageID = ");
	write(MAX_FP + '0');
	search(1, 0, MAX_FP);	//searches through entire database
	if (ConfirmationCode == 0x00) {	//successfully found ID
		lcd_set_cursor_position(0, 0);
		str_write("Found FP at     ");
		lcd_set_cursor_position(1, 0);
		str_write("      PageID = ");
		FP_ID = errorbuffer[10] + errorbuffer[11];//gets pageID = location of FP stored in FLASH
		write(FP_ID + '0');
		FPIDrdy = 1;
		//return FP_ID;
	} else if (ConfirmationCode == 0x01) {
		lcd_set_cursor_position(0, 0);
		str_write("Error During    ");
		lcd_set_cursor_position(1, 0);
		str_write("                ");
		//return -1;
	} else {
		lcd_set_cursor_position(0, 0);
		str_write("FP Not Found    ");
		lcd_set_cursor_position(1, 0);
		str_write("Please Enroll   ");
		//return -1;
	}
}
