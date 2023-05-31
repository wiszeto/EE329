################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/freertos/xlnx_common/irq.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/freertos/xlnx_common/irq.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/freertos/xlnx_common/irq.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/freertos/xlnx_common/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/freertos/xlnx_common/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/freertos/xlnx_common/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/freertos/xlnx_common/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/freertos/xlnx_common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-freertos-2f-xlnx_common

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-freertos-2f-xlnx_common:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/freertos/xlnx_common/irq.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/freertos/xlnx_common/irq.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/freertos/xlnx_common/irq.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/freertos/xlnx_common/irq.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-freertos-2f-xlnx_common

