################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/arduino/stm32/OpenAMP/virtio/virtio.c \
../Core/arduino/stm32/OpenAMP/virtio/virtqueue.c 

OBJS += \
./Core/arduino/stm32/OpenAMP/virtio/virtio.o \
./Core/arduino/stm32/OpenAMP/virtio/virtqueue.o 

C_DEPS += \
./Core/arduino/stm32/OpenAMP/virtio/virtio.d \
./Core/arduino/stm32/OpenAMP/virtio/virtqueue.d 


# Each subdirectory must supply rules for building sources it contributes
Core/arduino/stm32/OpenAMP/virtio/%.o Core/arduino/stm32/OpenAMP/virtio/%.su Core/arduino/stm32/OpenAMP/virtio/%.cyclo: ../Core/arduino/stm32/OpenAMP/virtio/%.c Core/arduino/stm32/OpenAMP/virtio/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-arduino-2f-stm32-2f-OpenAMP-2f-virtio

clean-Core-2f-arduino-2f-stm32-2f-OpenAMP-2f-virtio:
	-$(RM) ./Core/arduino/stm32/OpenAMP/virtio/virtio.cyclo ./Core/arduino/stm32/OpenAMP/virtio/virtio.d ./Core/arduino/stm32/OpenAMP/virtio/virtio.o ./Core/arduino/stm32/OpenAMP/virtio/virtio.su ./Core/arduino/stm32/OpenAMP/virtio/virtqueue.cyclo ./Core/arduino/stm32/OpenAMP/virtio/virtqueue.d ./Core/arduino/stm32/OpenAMP/virtio/virtqueue.o ./Core/arduino/stm32/OpenAMP/virtio/virtqueue.su

.PHONY: clean-Core-2f-arduino-2f-stm32-2f-OpenAMP-2f-virtio

