################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/PeripheralPins.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/generic_clock.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/stm32yyxx_zz_ppp.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/system_stm32yyxx.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/PeripheralPins.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/generic_clock.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/stm32yyxx_zz_ppp.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/system_stm32yyxx.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/PeripheralPins.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/generic_clock.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/stm32yyxx_zz_ppp.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/system_stm32yyxx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-CI-2f-update-2f-templates

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-CI-2f-update-2f-templates:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/PeripheralPins.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/PeripheralPins.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/PeripheralPins.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/PeripheralPins.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/generic_clock.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/generic_clock.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/generic_clock.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/generic_clock.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/stm32yyxx_zz_ppp.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/stm32yyxx_zz_ppp.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/stm32yyxx_zz_ppp.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/stm32yyxx_zz_ppp.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/system_stm32yyxx.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/system_stm32yyxx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/system_stm32yyxx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/CI/update/templates/system_stm32yyxx.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-CI-2f-update-2f-templates

