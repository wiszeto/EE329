################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/arduino/avr/dtostrf.c 

OBJS += \
./Core/arduino/avr/dtostrf.o 

C_DEPS += \
./Core/arduino/avr/dtostrf.d 


# Each subdirectory must supply rules for building sources it contributes
Core/arduino/avr/%.o Core/arduino/avr/%.su Core/arduino/avr/%.cyclo: ../Core/arduino/avr/%.c Core/arduino/avr/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-arduino-2f-avr

clean-Core-2f-arduino-2f-avr:
	-$(RM) ./Core/arduino/avr/dtostrf.cyclo ./Core/arduino/avr/dtostrf.d ./Core/arduino/avr/dtostrf.o ./Core/arduino/avr/dtostrf.su

.PHONY: clean-Core-2f-arduino-2f-avr

