################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Core/Src/stm32/startup_stm32yyxx.S 

OBJS += \
./Core/Src/stm32/startup_stm32yyxx.o 

S_UPPER_DEPS += \
./Core/Src/stm32/startup_stm32yyxx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/stm32/%.o: ../Core/Src/stm32/%.S Core/Src/stm32/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Src-2f-stm32

clean-Core-2f-Src-2f-stm32:
	-$(RM) ./Core/Src/stm32/startup_stm32yyxx.d ./Core/Src/stm32/startup_stm32yyxx.o

.PHONY: clean-Core-2f-Src-2f-stm32

