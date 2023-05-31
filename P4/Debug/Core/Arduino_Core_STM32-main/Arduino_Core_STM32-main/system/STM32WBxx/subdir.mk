################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/STM32WBxx/system_stm32wbxx.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/STM32WBxx/system_stm32wbxx.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/STM32WBxx/system_stm32wbxx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/STM32WBxx/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/STM32WBxx/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/STM32WBxx/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/STM32WBxx/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/STM32WBxx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-STM32WBxx

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-STM32WBxx:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/STM32WBxx/system_stm32wbxx.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/STM32WBxx/system_stm32wbxx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/STM32WBxx/system_stm32wbxx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/STM32WBxx/system_stm32wbxx.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-STM32WBxx

