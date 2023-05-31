################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/open-amp/apps/system/generic/machine/zynq7/helper.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/open-amp/apps/system/generic/machine/zynq7/helper.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/open-amp/apps/system/generic/machine/zynq7/helper.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/open-amp/apps/system/generic/machine/zynq7/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/open-amp/apps/system/generic/machine/zynq7/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/open-amp/apps/system/generic/machine/zynq7/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/open-amp/apps/system/generic/machine/zynq7/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/open-amp/apps/system/generic/machine/zynq7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-open-2d-amp-2f-apps-2f-system-2f-generic-2f-machine-2f-zynq7

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-open-2d-amp-2f-apps-2f-system-2f-generic-2f-machine-2f-zynq7:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/open-amp/apps/system/generic/machine/zynq7/helper.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/open-amp/apps/system/generic/machine/zynq7/helper.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/open-amp/apps/system/generic/machine/zynq7/helper.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/open-amp/apps/system/generic/machine/zynq7/helper.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-open-2d-amp-2f-apps-2f-system-2f-generic-2f-machine-2f-zynq7

