################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/PeripheralPins.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/generic_clock.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/PeripheralPins.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/generic_clock.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/PeripheralPins.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/generic_clock.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/PeripheralPins.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/PeripheralPins.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/PeripheralPins.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/generic_clock.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/generic_clock.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/generic_clock.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L1xx-2f-L100R-28-8-2d-B-29-Tx-28-A-29-_L151R-28-6-2d-8-2d-B-29-Tx-28-A-29-_L152R-28-6-2d-8-2d-B-29-Tx-28-A-29-

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L1xx-2f-L100R-28-8-2d-B-29-Tx-28-A-29-_L151R-28-6-2d-8-2d-B-29-Tx-28-A-29-_L152R-28-6-2d-8-2d-B-29-Tx-28-A-29-:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/PeripheralPins.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/PeripheralPins.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/PeripheralPins.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/PeripheralPins.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/generic_clock.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/generic_clock.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/generic_clock.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32L1xx/L100R(8-B)Tx(A)_L151R(6-8-B)Tx(A)_L152R(6-8-B)Tx(A)/generic_clock.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32L1xx-2f-L100R-28-8-2d-B-29-Tx-28-A-29-_L151R-28-6-2d-8-2d-B-29-Tx-28-A-29-_L152R-28-6-2d-8-2d-B-29-Tx-28-A-29-

