import serial

# Open the serial port.
ser = serial.Serial('COM3', 57600)

while True:
    if ser.in_waiting > 0:
        byte = ser.read().decode('utf-8')
        print(byte, end='')