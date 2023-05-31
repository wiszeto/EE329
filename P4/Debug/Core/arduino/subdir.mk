################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/arduino/board.c \
../Core/arduino/core_debug.c \
../Core/arduino/hooks.c \
../Core/arduino/itoa.c \
../Core/arduino/pins_arduino.c \
../Core/arduino/wiring_analog.c \
../Core/arduino/wiring_digital.c \
../Core/arduino/wiring_shift.c \
../Core/arduino/wiring_time.c 

OBJS += \
./Core/arduino/board.o \
./Core/arduino/core_debug.o \
./Core/arduino/hooks.o \
./Core/arduino/itoa.o \
./Core/arduino/pins_arduino.o \
./Core/arduino/wiring_analog.o \
./Core/arduino/wiring_digital.o \
./Core/arduino/wiring_shift.o \
./Core/arduino/wiring_time.o 

C_DEPS += \
./Core/arduino/board.d \
./Core/arduino/core_debug.d \
./Core/arduino/hooks.d \
./Core/arduino/itoa.d \
./Core/arduino/pins_arduino.d \
./Core/arduino/wiring_analog.d \
./Core/arduino/wiring_digital.d \
./Core/arduino/wiring_shift.d \
./Core/arduino/wiring_time.d 


# Each subdirectory must supply rules for building sources it contributes
Core/arduino/%.o Core/arduino/%.su Core/arduino/%.cyclo: ../Core/arduino/%.c Core/arduino/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-arduino

clean-Core-2f-arduino:
	-$(RM) ./Core/arduino/board.cyclo ./Core/arduino/board.d ./Core/arduino/board.o ./Core/arduino/board.su ./Core/arduino/core_debug.cyclo ./Core/arduino/core_debug.d ./Core/arduino/core_debug.o ./Core/arduino/core_debug.su ./Core/arduino/hooks.cyclo ./Core/arduino/hooks.d ./Core/arduino/hooks.o ./Core/arduino/hooks.su ./Core/arduino/itoa.cyclo ./Core/arduino/itoa.d ./Core/arduino/itoa.o ./Core/arduino/itoa.su ./Core/arduino/pins_arduino.cyclo ./Core/arduino/pins_arduino.d ./Core/arduino/pins_arduino.o ./Core/arduino/pins_arduino.su ./Core/arduino/wiring_analog.cyclo ./Core/arduino/wiring_analog.d ./Core/arduino/wiring_analog.o ./Core/arduino/wiring_analog.su ./Core/arduino/wiring_digital.cyclo ./Core/arduino/wiring_digital.d ./Core/arduino/wiring_digital.o ./Core/arduino/wiring_digital.su ./Core/arduino/wiring_shift.cyclo ./Core/arduino/wiring_shift.d ./Core/arduino/wiring_shift.o ./Core/arduino/wiring_shift.su ./Core/arduino/wiring_time.cyclo ./Core/arduino/wiring_time.d ./Core/arduino/wiring_time.o ./Core/arduino/wiring_time.su

.PHONY: clean-Core-2f-arduino

