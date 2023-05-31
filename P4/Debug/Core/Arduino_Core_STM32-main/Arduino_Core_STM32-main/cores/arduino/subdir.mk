################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/board.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/core_debug.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/hooks.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/itoa.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/pins_arduino.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_analog.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_digital.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_shift.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_time.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/board.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/core_debug.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/hooks.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/itoa.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/pins_arduino.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_analog.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_digital.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_shift.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_time.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/board.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/core_debug.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/hooks.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/itoa.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/pins_arduino.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_analog.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_digital.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_shift.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_time.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-cores-2f-arduino

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-cores-2f-arduino:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/board.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/board.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/board.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/board.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/core_debug.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/core_debug.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/core_debug.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/core_debug.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/hooks.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/hooks.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/hooks.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/hooks.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/itoa.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/itoa.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/itoa.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/itoa.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/pins_arduino.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/pins_arduino.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/pins_arduino.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/pins_arduino.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_analog.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_analog.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_analog.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_analog.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_digital.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_digital.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_digital.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_digital.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_shift.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_shift.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_shift.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_shift.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_time.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_time.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_time.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/wiring_time.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-cores-2f-arduino

