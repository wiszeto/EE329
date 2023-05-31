################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg_virtio.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg_virtio.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg_virtio.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-cores-2f-arduino-2f-stm32-2f-OpenAMP-2f-open-2d-amp-2f-rpmsg

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-cores-2f-arduino-2f-stm32-2f-OpenAMP-2f-open-2d-amp-2f-rpmsg:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg_virtio.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg_virtio.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg_virtio.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg_virtio.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-cores-2f-arduino-2f-stm32-2f-OpenAMP-2f-open-2d-amp-2f-rpmsg

