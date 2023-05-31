################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins_SWAN_R5.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/generic_clock.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins_SWAN_R5.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/generic_clock.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins_SWAN_R5.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/generic_clock.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins_SWAN_R5.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins_SWAN_R5.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins_SWAN_R5.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/generic_clock.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/generic_clock.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/generic_clock.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L4xx-2f-L4R5Z-28-G-2d-I-29-Y_L4R9Z-28-G-2d-I-29-Y_L4S5ZIY_L4S9ZIY

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L4xx-2f-L4R5Z-28-G-2d-I-29-Y_L4R9Z-28-G-2d-I-29-Y_L4S5ZIY_L4S9ZIY:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins_SWAN_R5.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins_SWAN_R5.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins_SWAN_R5.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/PeripheralPins_SWAN_R5.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/generic_clock.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/generic_clock.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/generic_clock.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L4xx/L4R5Z(G-I)Y_L4R9Z(G-I)Y_L4S5ZIY_L4S9ZIY/generic_clock.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L4xx-2f-L4R5Z-28-G-2d-I-29-Y_L4R9Z-28-G-2d-I-29-Y_L4S5ZIY_L4S9ZIY

