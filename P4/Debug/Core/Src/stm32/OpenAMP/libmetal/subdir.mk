################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/stm32/OpenAMP/libmetal/device.c \
../Core/Src/stm32/OpenAMP/libmetal/init.c \
../Core/Src/stm32/OpenAMP/libmetal/io.c \
../Core/Src/stm32/OpenAMP/libmetal/log.c \
../Core/Src/stm32/OpenAMP/libmetal/shmem.c 

OBJS += \
./Core/Src/stm32/OpenAMP/libmetal/device.o \
./Core/Src/stm32/OpenAMP/libmetal/init.o \
./Core/Src/stm32/OpenAMP/libmetal/io.o \
./Core/Src/stm32/OpenAMP/libmetal/log.o \
./Core/Src/stm32/OpenAMP/libmetal/shmem.o 

C_DEPS += \
./Core/Src/stm32/OpenAMP/libmetal/device.d \
./Core/Src/stm32/OpenAMP/libmetal/init.d \
./Core/Src/stm32/OpenAMP/libmetal/io.d \
./Core/Src/stm32/OpenAMP/libmetal/log.d \
./Core/Src/stm32/OpenAMP/libmetal/shmem.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/stm32/OpenAMP/libmetal/%.o Core/Src/stm32/OpenAMP/libmetal/%.su Core/Src/stm32/OpenAMP/libmetal/%.cyclo: ../Core/Src/stm32/OpenAMP/libmetal/%.c Core/Src/stm32/OpenAMP/libmetal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-stm32-2f-OpenAMP-2f-libmetal

clean-Core-2f-Src-2f-stm32-2f-OpenAMP-2f-libmetal:
	-$(RM) ./Core/Src/stm32/OpenAMP/libmetal/device.cyclo ./Core/Src/stm32/OpenAMP/libmetal/device.d ./Core/Src/stm32/OpenAMP/libmetal/device.o ./Core/Src/stm32/OpenAMP/libmetal/device.su ./Core/Src/stm32/OpenAMP/libmetal/init.cyclo ./Core/Src/stm32/OpenAMP/libmetal/init.d ./Core/Src/stm32/OpenAMP/libmetal/init.o ./Core/Src/stm32/OpenAMP/libmetal/init.su ./Core/Src/stm32/OpenAMP/libmetal/io.cyclo ./Core/Src/stm32/OpenAMP/libmetal/io.d ./Core/Src/stm32/OpenAMP/libmetal/io.o ./Core/Src/stm32/OpenAMP/libmetal/io.su ./Core/Src/stm32/OpenAMP/libmetal/log.cyclo ./Core/Src/stm32/OpenAMP/libmetal/log.d ./Core/Src/stm32/OpenAMP/libmetal/log.o ./Core/Src/stm32/OpenAMP/libmetal/log.su ./Core/Src/stm32/OpenAMP/libmetal/shmem.cyclo ./Core/Src/stm32/OpenAMP/libmetal/shmem.d ./Core/Src/stm32/OpenAMP/libmetal/shmem.o ./Core/Src/stm32/OpenAMP/libmetal/shmem.su

.PHONY: clean-Core-2f-Src-2f-stm32-2f-OpenAMP-2f-libmetal

