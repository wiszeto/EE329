################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/arduino/stm32/OpenAMP/libmetal/generic/cortexm/sys.c 

OBJS += \
./Core/arduino/stm32/OpenAMP/libmetal/generic/cortexm/sys.o 

C_DEPS += \
./Core/arduino/stm32/OpenAMP/libmetal/generic/cortexm/sys.d 


# Each subdirectory must supply rules for building sources it contributes
Core/arduino/stm32/OpenAMP/libmetal/generic/cortexm/%.o Core/arduino/stm32/OpenAMP/libmetal/generic/cortexm/%.su Core/arduino/stm32/OpenAMP/libmetal/generic/cortexm/%.cyclo: ../Core/arduino/stm32/OpenAMP/libmetal/generic/cortexm/%.c Core/arduino/stm32/OpenAMP/libmetal/generic/cortexm/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-arduino-2f-stm32-2f-OpenAMP-2f-libmetal-2f-generic-2f-cortexm

clean-Core-2f-arduino-2f-stm32-2f-OpenAMP-2f-libmetal-2f-generic-2f-cortexm:
	-$(RM) ./Core/arduino/stm32/OpenAMP/libmetal/generic/cortexm/sys.cyclo ./Core/arduino/stm32/OpenAMP/libmetal/generic/cortexm/sys.d ./Core/arduino/stm32/OpenAMP/libmetal/generic/cortexm/sys.o ./Core/arduino/stm32/OpenAMP/libmetal/generic/cortexm/sys.su

.PHONY: clean-Core-2f-arduino-2f-stm32-2f-OpenAMP-2f-libmetal-2f-generic-2f-cortexm

