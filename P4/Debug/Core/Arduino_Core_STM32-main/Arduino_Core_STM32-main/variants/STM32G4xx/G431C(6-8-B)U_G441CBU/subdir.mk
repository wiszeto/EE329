################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins_B_G431B_ESC1.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/generic_clock.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins_B_G431B_ESC1.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/generic_clock.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins_B_G431B_ESC1.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/generic_clock.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins_B_G431B_ESC1.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins_B_G431B_ESC1.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins_B_G431B_ESC1.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/generic_clock.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/generic_clock.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/generic_clock.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32G4xx-2f-G431C-28-6-2d-8-2d-B-29-U_G441CBU

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32G4xx-2f-G431C-28-6-2d-8-2d-B-29-U_G441CBU:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins_B_G431B_ESC1.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins_B_G431B_ESC1.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins_B_G431B_ESC1.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/PeripheralPins_B_G431B_ESC1.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/generic_clock.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/generic_clock.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/generic_clock.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32G4xx/G431C(6-8-B)U_G441CBU/generic_clock.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32G4xx-2f-G431C-28-6-2d-8-2d-B-29-U_G441CBU

