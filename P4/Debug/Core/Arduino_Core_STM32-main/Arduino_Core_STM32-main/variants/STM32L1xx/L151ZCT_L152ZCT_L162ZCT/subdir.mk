################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/PeripheralPins.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/generic_clock.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/PeripheralPins.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/generic_clock.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/PeripheralPins.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/generic_clock.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L1xx-2f-L151ZCT_L152ZCT_L162ZCT

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L1xx-2f-L151ZCT_L152ZCT_L162ZCT:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/PeripheralPins.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/PeripheralPins.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/PeripheralPins.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/PeripheralPins.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/generic_clock.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/generic_clock.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/generic_clock.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L151ZCT_L152ZCT_L162ZCT/generic_clock.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L1xx-2f-L151ZCT_L152ZCT_L162ZCT

