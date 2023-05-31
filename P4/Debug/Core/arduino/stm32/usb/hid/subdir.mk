################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/arduino/stm32/usb/hid/usbd_hid_composite.c \
../Core/arduino/stm32/usb/hid/usbd_hid_composite_if.c 

OBJS += \
./Core/arduino/stm32/usb/hid/usbd_hid_composite.o \
./Core/arduino/stm32/usb/hid/usbd_hid_composite_if.o 

C_DEPS += \
./Core/arduino/stm32/usb/hid/usbd_hid_composite.d \
./Core/arduino/stm32/usb/hid/usbd_hid_composite_if.d 


# Each subdirectory must supply rules for building sources it contributes
Core/arduino/stm32/usb/hid/%.o Core/arduino/stm32/usb/hid/%.su Core/arduino/stm32/usb/hid/%.cyclo: ../Core/arduino/stm32/usb/hid/%.c Core/arduino/stm32/usb/hid/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-arduino-2f-stm32-2f-usb-2f-hid

clean-Core-2f-arduino-2f-stm32-2f-usb-2f-hid:
	-$(RM) ./Core/arduino/stm32/usb/hid/usbd_hid_composite.cyclo ./Core/arduino/stm32/usb/hid/usbd_hid_composite.d ./Core/arduino/stm32/usb/hid/usbd_hid_composite.o ./Core/arduino/stm32/usb/hid/usbd_hid_composite.su ./Core/arduino/stm32/usb/hid/usbd_hid_composite_if.cyclo ./Core/arduino/stm32/usb/hid/usbd_hid_composite_if.d ./Core/arduino/stm32/usb/hid/usbd_hid_composite_if.o ./Core/arduino/stm32/usb/hid/usbd_hid_composite_if.su

.PHONY: clean-Core-2f-arduino-2f-stm32-2f-usb-2f-hid

