################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/PeripheralPins.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/generic_clock.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/PeripheralPins.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/generic_clock.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/PeripheralPins.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/generic_clock.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32MP1xx-2f-MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32MP1xx-2f-MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/PeripheralPins.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/PeripheralPins.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/PeripheralPins.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/PeripheralPins.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/generic_clock.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/generic_clock.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/generic_clock.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/variants/STM32MP1xx/MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA/generic_clock.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-variants-2f-STM32MP1xx-2f-MP153AAA_MP153CAA_MP153DAA_MP153FAA_MP157AAA_MP157CAA_MP157DAA_MP157FAA

