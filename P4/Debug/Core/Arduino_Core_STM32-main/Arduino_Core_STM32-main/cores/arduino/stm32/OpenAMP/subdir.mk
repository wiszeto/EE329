################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/mbox_ipcc.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/openamp.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/rsc_table.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virt_uart.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_buffer.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_log.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/mbox_ipcc.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/openamp.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/rsc_table.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virt_uart.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_buffer.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_log.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/mbox_ipcc.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/openamp.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/rsc_table.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virt_uart.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_buffer.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_log.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-cores-2f-arduino-2f-stm32-2f-OpenAMP

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-cores-2f-arduino-2f-stm32-2f-OpenAMP:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/mbox_ipcc.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/mbox_ipcc.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/mbox_ipcc.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/mbox_ipcc.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/openamp.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/openamp.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/openamp.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/openamp.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/rsc_table.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/rsc_table.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/rsc_table.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/rsc_table.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virt_uart.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virt_uart.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virt_uart.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virt_uart.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_buffer.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_buffer.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_buffer.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_buffer.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_log.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_log.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_log.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/OpenAMP/virtio_log.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-cores-2f-arduino-2f-stm32-2f-OpenAMP

