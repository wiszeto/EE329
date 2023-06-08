
#ifndef INC_I2C_H_
#define INC_I2C_H_

void I2C_init(void);
void EEPROM_write(uint16_t addr, uint8_t data);
uint8_t EEPROM_read(uint16_t addr);

#endif /* INC_I2C_H_ */
