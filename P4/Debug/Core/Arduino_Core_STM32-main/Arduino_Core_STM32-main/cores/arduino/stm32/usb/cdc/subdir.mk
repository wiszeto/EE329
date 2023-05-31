################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/cdc_queue.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc_if.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/cdc_queue.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc_if.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/cdc_queue.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc_if.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-cores-2f-arduino-2f-stm32-2f-usb-2f-cdc

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-cores-2f-arduino-2f-stm32-2f-usb-2f-cdc:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/cdc_queue.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/cdc_queue.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/cdc_queue.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/cdc_queue.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc_if.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc_if.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc_if.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/cores/arduino/stm32/usb/cdc/usbd_cdc_if.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-cores-2f-arduino-2f-stm32-2f-usb-2f-cdc

