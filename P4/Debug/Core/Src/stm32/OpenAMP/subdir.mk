################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/stm32/OpenAMP/mbox_ipcc.c \
../Core/Src/stm32/OpenAMP/openamp.c \
../Core/Src/stm32/OpenAMP/rsc_table.c \
../Core/Src/stm32/OpenAMP/virt_uart.c \
../Core/Src/stm32/OpenAMP/virtio_buffer.c \
../Core/Src/stm32/OpenAMP/virtio_log.c 

OBJS += \
./Core/Src/stm32/OpenAMP/mbox_ipcc.o \
./Core/Src/stm32/OpenAMP/openamp.o \
./Core/Src/stm32/OpenAMP/rsc_table.o \
./Core/Src/stm32/OpenAMP/virt_uart.o \
./Core/Src/stm32/OpenAMP/virtio_buffer.o \
./Core/Src/stm32/OpenAMP/virtio_log.o 

C_DEPS += \
./Core/Src/stm32/OpenAMP/mbox_ipcc.d \
./Core/Src/stm32/OpenAMP/openamp.d \
./Core/Src/stm32/OpenAMP/rsc_table.d \
./Core/Src/stm32/OpenAMP/virt_uart.d \
./Core/Src/stm32/OpenAMP/virtio_buffer.d \
./Core/Src/stm32/OpenAMP/virtio_log.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/stm32/OpenAMP/%.o Core/Src/stm32/OpenAMP/%.su Core/Src/stm32/OpenAMP/%.cyclo: ../Core/Src/stm32/OpenAMP/%.c Core/Src/stm32/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-stm32-2f-OpenAMP

clean-Core-2f-Src-2f-stm32-2f-OpenAMP:
	-$(RM) ./Core/Src/stm32/OpenAMP/mbox_ipcc.cyclo ./Core/Src/stm32/OpenAMP/mbox_ipcc.d ./Core/Src/stm32/OpenAMP/mbox_ipcc.o ./Core/Src/stm32/OpenAMP/mbox_ipcc.su ./Core/Src/stm32/OpenAMP/openamp.cyclo ./Core/Src/stm32/OpenAMP/openamp.d ./Core/Src/stm32/OpenAMP/openamp.o ./Core/Src/stm32/OpenAMP/openamp.su ./Core/Src/stm32/OpenAMP/rsc_table.cyclo ./Core/Src/stm32/OpenAMP/rsc_table.d ./Core/Src/stm32/OpenAMP/rsc_table.o ./Core/Src/stm32/OpenAMP/rsc_table.su ./Core/Src/stm32/OpenAMP/virt_uart.cyclo ./Core/Src/stm32/OpenAMP/virt_uart.d ./Core/Src/stm32/OpenAMP/virt_uart.o ./Core/Src/stm32/OpenAMP/virt_uart.su ./Core/Src/stm32/OpenAMP/virtio_buffer.cyclo ./Core/Src/stm32/OpenAMP/virtio_buffer.d ./Core/Src/stm32/OpenAMP/virtio_buffer.o ./Core/Src/stm32/OpenAMP/virtio_buffer.su ./Core/Src/stm32/OpenAMP/virtio_log.cyclo ./Core/Src/stm32/OpenAMP/virtio_log.d ./Core/Src/stm32/OpenAMP/virtio_log.o ./Core/Src/stm32/OpenAMP/virtio_log.su

.PHONY: clean-Core-2f-Src-2f-stm32-2f-OpenAMP

