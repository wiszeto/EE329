	while (1) {

		//-----------------START OF SEQUENCE----------------------------------
		//Keeps you in reset state after reset push button
		while (reset_state) {
			char star_check = keypad_read(4, 3); //checks if asterisk is pushed to get out of reset state
				if (star_check == 10) {
					reset = 0;	//ensures reset is 0 so doesn't reset display
					reset_state = 0;//takes me out of reset state allows me to take inputs
				}

		}

		//-------------------START REGISTERING KEYAPD INPUTS
		//Starts registering keypad inputs
		while ((four_push < 4) & (reset == 0)) { //This might not update screen when pushing
			char output = keypad_read(4, 3); //get key value
			if (output != '-') { //if button is pushed sets value to dispaly to LED
				if (output == '10') {
					LCD_reset_count_display();
				}
				else {
					    int int_num = output - '0'; //char to int

						if (int_num > 5) {
							write('5');
							int_num = 5;
						}
						
						delay_us(1000000);

                        four_push = four_push + 1;
						if (four_push == 4)  {
							lcd_curs_pos = 0;
							go = 1;
						}	//Takes last keypad input and enables go to start countdown

				}

			}
		}

		//--------------------WAITING FOR GO KEYPRESS TO START COUNTDOWN
		char go_check = keypad_read(4, 3);			//To check when key
		if ((go_check == '11') & go) {
			GPIOC->BRR = (GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3); 	// turns off LED after
			go = 0;			//no longer takes go input to start countdown (this could potentially break sequencing might have to put it in the while start countdown at the very end)

			//-----------------START TO COUNTDOWN
			while ((total_time_sec != 0) & (reset == 0)) {
				char output = keypad_read(4, 3); // get key value
				if (output == '10')				//if reset is pushed
					LCD_reset_count_display();
				else {
					total_time_sec = decrement_time(total_time_sec);
					load_time(total_time_sec);
					LCD_update_count_display(); //displays it to the LCD
					
					if (total_time_sec == 0)
						while (1) {
						GPIOC->BSRR = GPIO_PIN_0; //turns LED on only when countdown is complete
						}
				}
			}
		}
	}
-------------------------------------------------------------------------------------------------------------------------------------------------------------

    	while (1) {

		//-----------------START OF SEQUENCE----------------------------------
		//Keeps you in reset state after reset push button
		while (reset_state) {
			char star_check = keypad_read(4, 3); //checks if asterisk is pushed to get out of reset state
				if (star_check == '10') {
					reset = 0;	//ensures reset is 0 so doesn't reset display
					reset_state = 0;//takes me out of reset state allows me to take inputs
				}

		}

		//-------------------START REGISTERING KEYAPD INPUTS
		//Starts registering keypad inputs
		while ((four_push < 4) & (reset == 0)) { //This might not update screen when pushing
			lcd_set_cursor_position(1, 11);
			write('5');
			char key_read = keypad_read(4, 3); //get key value
			if (key_read == '-') { //if button is pushed sets value to dispaly to LED
				if (key_read != '10') {
					LCD_reset_count_display();
				}
				else {
					    int int_num = key_read - '0'; //char to int

						if (int_num > 5) {
							int_num = 5;
						}
						output_LCD[(3 - four_push)] = LCD_convert_time_to_ascii(int_num); //Load value onto array
						lcd_set_cursor_position(1, 11);
						delay_us(1000000);

                        four_push = four_push + 1;
						if (four_push == 4)  {
							lcd_curs_pos = 0;
							go = 1;
						}	//Takes last keypad input and enables go to start countdown

				}

			}
		}

		//--------------------WAITING FOR GO KEYPRESS TO START COUNTDOWN
//		char go_check = keypad_read(4, 3);			//To check when key
//		if ((go_check == '11') & go) {
//			GPIOC->BRR = (GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3); 	// turns off LED after
//			go = 0;			//no longer takes go input to start countdown (this could potentially break sequencing might have to put it in the while start countdown at the very end)
//
//			//-----------------START TO COUNTDOWN
//			while ((total_time_sec != 0) & (reset == 0)) {
//				char output = keypad_read(4, 3); // get key value
//				if (output == '10')				//if reset is pushed
//					LCD_reset_count_display();
//				else {
//					total_time_sec = decrement_time(total_time_sec);
//					load_time(total_time_sec);
//					LCD_update_count_display(); //displays it to the LCD
//
//					if (total_time_sec == 0)
//						while (1) {
//						GPIOC->BSRR = GPIO_PIN_0; //turns LED on only when countdown is complete
//						}
//				}
//			}
//		}
	}

