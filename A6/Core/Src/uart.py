# import serial

# # Open the serial port.
# ser = serial.Serial('COM3', 57600)

# # Open the log file.
# log_file = open("serial_log.txt", "w")

# try:
#     while True:
#         if ser.in_waiting > 0:
#             byte = ser.read().decode('utf-8')
#             print(byte)

#             # Write the data to the log file.
#             log_file.write(byte)
            
#             log_file.flush()  # Make sure it's actually written to disk.

# except KeyboardInterrupt:
#     print("Ending and closing log file.")

# finally:
#     # Close the log file when you're done.
#     log_file.close()
import serial

# Open the serial port.
ser = serial.Serial('COM3', 57600)

try:
    # The bytes to send.
    bytes_to_send = b"Hello, UART!"

    # Send it over the UART.
    ser.write(bytes_to_send)

except Exception as e:
    # If there's an error, print it out.
    print("Error: ", str(e))

finally:
    # Close the serial port when you're done with it.
    ser.close()

