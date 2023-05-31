################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/stm32/OpenAMP/libmetal/generic/condition.c \
../Core/Src/stm32/OpenAMP/libmetal/generic/generic_device.c \
../Core/Src/stm32/OpenAMP/libmetal/generic/generic_init.c \
../Core/Src/stm32/OpenAMP/libmetal/generic/generic_io.c \
../Core/Src/stm32/OpenAMP/libmetal/generic/generic_shmem.c \
../Core/Src/stm32/OpenAMP/libmetal/generic/time.c 

OBJS += \
./Core/Src/stm32/OpenAMP/libmetal/generic/condition.o \
./Core/Src/stm32/OpenAMP/libmetal/generic/generic_device.o \
./Core/Src/stm32/OpenAMP/libmetal/generic/generic_init.o \
./Core/Src/stm32/OpenAMP/libmetal/generic/generic_io.o \
./Core/Src/stm32/OpenAMP/libmetal/generic/generic_shmem.o \
./Core/Src/stm32/OpenAMP/libmetal/generic/time.o 

C_DEPS += \
./Core/Src/stm32/OpenAMP/libmetal/generic/condition.d \
./Core/Src/stm32/OpenAMP/libmetal/generic/generic_device.d \
./Core/Src/stm32/OpenAMP/libmetal/generic/generic_init.d \
./Core/Src/stm32/OpenAMP/libmetal/generic/generic_io.d \
./Core/Src/stm32/OpenAMP/libmetal/generic/generic_shmem.d \
./Core/Src/stm32/OpenAMP/libmetal/generic/time.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/stm32/OpenAMP/libmetal/generic/%.o Core/Src/stm32/OpenAMP/libmetal/generic/%.su Core/Src/stm32/OpenAMP/libmetal/generic/%.cyclo: ../Core/Src/stm32/OpenAMP/libmetal/generic/%.c Core/Src/stm32/OpenAMP/libmetal/generic/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-stm32-2f-OpenAMP-2f-libmetal-2f-generic

clean-Core-2f-Src-2f-stm32-2f-OpenAMP-2f-libmetal-2f-generic:
	-$(RM) ./Core/Src/stm32/OpenAMP/libmetal/generic/condition.cyclo ./Core/Src/stm32/OpenAMP/libmetal/generic/condition.d ./Core/Src/stm32/OpenAMP/libmetal/generic/condition.o ./Core/Src/stm32/OpenAMP/libmetal/generic/condition.su ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_device.cyclo ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_device.d ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_device.o ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_device.su ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_init.cyclo ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_init.d ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_init.o ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_init.su ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_io.cyclo ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_io.d ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_io.o ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_io.su ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_shmem.cyclo ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_shmem.d ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_shmem.o ./Core/Src/stm32/OpenAMP/libmetal/generic/generic_shmem.su ./Core/Src/stm32/OpenAMP/libmetal/generic/time.cyclo ./Core/Src/stm32/OpenAMP/libmetal/generic/time.d ./Core/Src/stm32/OpenAMP/libmetal/generic/time.o ./Core/Src/stm32/OpenAMP/libmetal/generic/time.su

.PHONY: clean-Core-2f-Src-2f-stm32-2f-OpenAMP-2f-libmetal-2f-generic

