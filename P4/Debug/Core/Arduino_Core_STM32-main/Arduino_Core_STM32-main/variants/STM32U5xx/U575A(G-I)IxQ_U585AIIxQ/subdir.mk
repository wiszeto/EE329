################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins_B_U585I_IOT02A.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/generic_clock.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins_B_U585I_IOT02A.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/generic_clock.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins_B_U585I_IOT02A.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/generic_clock.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins_B_U585I_IOT02A.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins_B_U585I_IOT02A.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins_B_U585I_IOT02A.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/generic_clock.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/generic_clock.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/generic_clock.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32U5xx-2f-U575A-28-G-2d-I-29-IxQ_U585AIIxQ

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32U5xx-2f-U575A-28-G-2d-I-29-IxQ_U585AIIxQ:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins_B_U585I_IOT02A.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins_B_U585I_IOT02A.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins_B_U585I_IOT02A.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/PeripheralPins_B_U585I_IOT02A.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/generic_clock.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/generic_clock.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/generic_clock.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32U5xx/U575A(G-I)IxQ_U585AIIxQ/generic_clock.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32U5xx-2f-U575A-28-G-2d-I-29-IxQ_U585AIIxQ
