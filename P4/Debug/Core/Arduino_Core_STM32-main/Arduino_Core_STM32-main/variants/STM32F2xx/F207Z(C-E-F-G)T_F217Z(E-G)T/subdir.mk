################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins_NUCLEO_F207ZG.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/generic_clock.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins_NUCLEO_F207ZG.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/generic_clock.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins_NUCLEO_F207ZG.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/generic_clock.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins_NUCLEO_F207ZG.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins_NUCLEO_F207ZG.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins_NUCLEO_F207ZG.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/generic_clock.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/generic_clock.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/generic_clock.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32F2xx-2f-F207Z-28-C-2d-E-2d-F-2d-G-29-T_F217Z-28-E-2d-G-29-T

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32F2xx-2f-F207Z-28-C-2d-E-2d-F-2d-G-29-T_F217Z-28-E-2d-G-29-T:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins_NUCLEO_F207ZG.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins_NUCLEO_F207ZG.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins_NUCLEO_F207ZG.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/PeripheralPins_NUCLEO_F207ZG.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/generic_clock.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/generic_clock.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/generic_clock.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32F2xx/F207Z(C-E-F-G)T_F217Z(E-G)T/generic_clock.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32F2xx-2f-F207Z-28-C-2d-E-2d-F-2d-G-29-T_F217Z-28-E-2d-G-29-T

