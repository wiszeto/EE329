################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/arduino/stm32/OpenAMP/libmetal/device.c \
../Core/arduino/stm32/OpenAMP/libmetal/init.c \
../Core/arduino/stm32/OpenAMP/libmetal/io.c \
../Core/arduino/stm32/OpenAMP/libmetal/log.c \
../Core/arduino/stm32/OpenAMP/libmetal/shmem.c 

OBJS += \
./Core/arduino/stm32/OpenAMP/libmetal/device.o \
./Core/arduino/stm32/OpenAMP/libmetal/init.o \
./Core/arduino/stm32/OpenAMP/libmetal/io.o \
./Core/arduino/stm32/OpenAMP/libmetal/log.o \
./Core/arduino/stm32/OpenAMP/libmetal/shmem.o 

C_DEPS += \
./Core/arduino/stm32/OpenAMP/libmetal/device.d \
./Core/arduino/stm32/OpenAMP/libmetal/init.d \
./Core/arduino/stm32/OpenAMP/libmetal/io.d \
./Core/arduino/stm32/OpenAMP/libmetal/log.d \
./Core/arduino/stm32/OpenAMP/libmetal/shmem.d 


# Each subdirectory must supply rules for building sources it contributes
Core/arduino/stm32/OpenAMP/libmetal/%.o Core/arduino/stm32/OpenAMP/libmetal/%.su Core/arduino/stm32/OpenAMP/libmetal/%.cyclo: ../Core/arduino/stm32/OpenAMP/libmetal/%.c Core/arduino/stm32/OpenAMP/libmetal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-arduino-2f-stm32-2f-OpenAMP-2f-libmetal

clean-Core-2f-arduino-2f-stm32-2f-OpenAMP-2f-libmetal:
	-$(RM) ./Core/arduino/stm32/OpenAMP/libmetal/device.cyclo ./Core/arduino/stm32/OpenAMP/libmetal/device.d ./Core/arduino/stm32/OpenAMP/libmetal/device.o ./Core/arduino/stm32/OpenAMP/libmetal/device.su ./Core/arduino/stm32/OpenAMP/libmetal/init.cyclo ./Core/arduino/stm32/OpenAMP/libmetal/init.d ./Core/arduino/stm32/OpenAMP/libmetal/init.o ./Core/arduino/stm32/OpenAMP/libmetal/init.su ./Core/arduino/stm32/OpenAMP/libmetal/io.cyclo ./Core/arduino/stm32/OpenAMP/libmetal/io.d ./Core/arduino/stm32/OpenAMP/libmetal/io.o ./Core/arduino/stm32/OpenAMP/libmetal/io.su ./Core/arduino/stm32/OpenAMP/libmetal/log.cyclo ./Core/arduino/stm32/OpenAMP/libmetal/log.d ./Core/arduino/stm32/OpenAMP/libmetal/log.o ./Core/arduino/stm32/OpenAMP/libmetal/log.su ./Core/arduino/stm32/OpenAMP/libmetal/shmem.cyclo ./Core/arduino/stm32/OpenAMP/libmetal/shmem.d ./Core/arduino/stm32/OpenAMP/libmetal/shmem.o ./Core/arduino/stm32/OpenAMP/libmetal/shmem.su

.PHONY: clean-Core-2f-arduino-2f-stm32-2f-OpenAMP-2f-libmetal

