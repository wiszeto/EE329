#include "wavegen.h"
#include "main.h"

/*
 * The function wave generates different types of waveforms based on the provided wave_type.
 * It writes the appropriate voltage level to a DAC (Digital to Analog Converter) for each point in the waveform.
 *
 * @param wave_type   Type of the waveform. 1 for sine wave, 2 for sawtooth wave, anything else for square wave.
 * @param offset      Index in the waveform lookup table.
 * @param duty_cycle  For square wave, the proportion of the period in which the signal is high or active.
 * @param polarity    For sawtooth wave, 1 for regular, 0 for inverted.
 * @param num_points  Number of points in the waveform.
 *
 */
uint32_t wave(uint32_t wave_type, uint32_t offset, uint32_t duty_cycle, uint32_t polarity,
		uint32_t num_points) {
	switch (wave_type) {
	case 1: // Sine wave
		// Write the value from the sine wave lookup table to the DAC.
		DAC_write(SINE[offset]);
		break;
	case 2: // Sawtooth wave
		// Write the value from the sawtooth or inverted sawtooth lookup table to the DAC, based on the polarity.
		if (polarity) DAC_write(SAWTOOTH[offset]);
		else DAC_write(NSAWTOOTH[offset]);
		break;

	default: // Square wave
		// If the offset is less than or equal to the value in the wave cycle lookup table at the index of the duty cycle,
		// write a high value (3V) to the DAC. Otherwise, write a low value (0V).
		if (offset <= (WAVE_CYCLE[duty_cycle])) {
			DAC_write(0xBEF); // 3V
		} else {
			DAC_write(0x5F); // 0V
		}
		break;
	}
}
