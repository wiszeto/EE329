import numpy as np
def generate_sawtooth_positive(num_points):
    min_value = 0x5F    # Minimum DAC value (corresponding to 0V)
    max_value = 0xBEF   # Maximum DAC value (corresponding to 3V)
    
    waveform = []
    increment = (max_value - min_value) / num_points
    
    for i in range(num_points):
        value = int(min_value + (i * increment))
        waveform.append(value)
    
    return waveform


def generate_sawtooth_negative(num_points):
    min_value = 0x5F    # Minimum DAC value (corresponding to 0V)
    max_value = 0xBEF   # Maximum DAC value (corresponding to 3V)
    
    waveform = []
    decrement = (max_value - min_value) / num_points
    
    for i in range(num_points):
        value = int(max_value - (i * decrement))
        waveform.append(value)
    
    return waveform


def generate_sine_wave(points, min_value=0x5F, max_value=0xBEF):
    # Generate an array of the specified number of points between 0 and 2pi
    x = np.linspace(0, 2*np.pi, points)

    # Generate the sine wave
    y = np.sin(x)

    # Normalize the sine wave to the range 0 to 1
    y_normalized = (y - np.min(y)) / (np.max(y) - np.min(y))

    # Scale the normalized sine wave to the range min_value to max_value
    y_scaled = (y_normalized * (max_value - min_value)) + min_value

    # Round the scaled values to the nearest integer, as DAC values must be integers
    y_scaled = np.round(y_scaled).astype(int)

    return y_scaled

num_points = 1140

#positive_sawtooth = generate_sawtooth_positive(num_points)
#negative_sawtooth = generate_sawtooth_negative(num_points)

#print("Positive Sawtooth:", positive_sawtooth)
#print("Negative Sawtooth:", negative_sawtooth)

sine_wave = generate_sine_wave(1140)
print(sine_wave.tolist())

