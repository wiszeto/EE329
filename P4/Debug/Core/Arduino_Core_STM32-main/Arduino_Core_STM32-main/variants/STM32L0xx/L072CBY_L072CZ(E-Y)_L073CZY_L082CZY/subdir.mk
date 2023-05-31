################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins_B_L072Z_LRWAN1.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/generic_clock.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins_B_L072Z_LRWAN1.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/generic_clock.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins_B_L072Z_LRWAN1.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/generic_clock.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins_B_L072Z_LRWAN1.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins_B_L072Z_LRWAN1.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins_B_L072Z_LRWAN1.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/generic_clock.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/generic_clock.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/generic_clock.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L0xx-2f-L072CBY_L072CZ-28-E-2d-Y-29-_L073CZY_L082CZY

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L0xx-2f-L072CBY_L072CZ-28-E-2d-Y-29-_L073CZY_L082CZY:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins_B_L072Z_LRWAN1.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins_B_L072Z_LRWAN1.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins_B_L072Z_LRWAN1.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/PeripheralPins_B_L072Z_LRWAN1.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/generic_clock.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/generic_clock.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/generic_clock.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072CBY_L072CZ(E-Y)_L073CZY_L082CZY/generic_clock.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L0xx-2f-L072CBY_L072CZ-28-E-2d-Y-29-_L073CZY_L082CZY

