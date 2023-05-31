################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins_THUNDERPACK_L072.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/generic_clock.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins_THUNDERPACK_L072.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/generic_clock.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins_THUNDERPACK_L072.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/generic_clock.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins_THUNDERPACK_L072.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins_THUNDERPACK_L072.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins_THUNDERPACK_L072.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/generic_clock.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/generic_clock.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/generic_clock.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L0xx-2f-L072K-28-B-2d-Z-29-T_L082K-28-B-2d-Z-29-T

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L0xx-2f-L072K-28-B-2d-Z-29-T_L082K-28-B-2d-Z-29-T:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins_THUNDERPACK_L072.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins_THUNDERPACK_L072.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins_THUNDERPACK_L072.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/PeripheralPins_THUNDERPACK_L072.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/generic_clock.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/generic_clock.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/generic_clock.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L0xx/L072K(B-Z)T_L082K(B-Z)T/generic_clock.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L0xx-2f-L072K-28-B-2d-Z-29-T_L082K-28-B-2d-Z-29-T

