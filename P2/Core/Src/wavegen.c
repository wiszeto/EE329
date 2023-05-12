#include "wavegen.h"
#include "main.h"

uint32_t wave(uint32_t wave_type, uint32_t offset, uint32_t duty_cycle, uint32_t polarity,
		uint32_t num_points) {
	switch (wave_type) {
	case 1: //wave = 1 sin
		DAC_write(SINE[offset]);
		break;
	case 2: //wave = 2 sawtooth
		if (polarity) DAC_write(SAWTOOTH[offset]);
		else DAC_write(NSAWTOOTH[offset]);
		break;


	default: //wave = 0 sqaure_wave
		if (offset <= (WAVE_CYCLE[duty_cycle])) {
			DAC_write(0xBEF); //3v
		} else {
			DAC_write(0x5F); //0V
		}
		break;
	}
}
