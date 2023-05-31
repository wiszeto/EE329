################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/stm32/usb/usb_device_core.c \
../Core/Src/stm32/usb/usb_device_ctlreq.c \
../Core/Src/stm32/usb/usb_device_ioreq.c \
../Core/Src/stm32/usb/usbd_conf.c \
../Core/Src/stm32/usb/usbd_desc.c \
../Core/Src/stm32/usb/usbd_ep_conf.c \
../Core/Src/stm32/usb/usbd_if.c 

OBJS += \
./Core/Src/stm32/usb/usb_device_core.o \
./Core/Src/stm32/usb/usb_device_ctlreq.o \
./Core/Src/stm32/usb/usb_device_ioreq.o \
./Core/Src/stm32/usb/usbd_conf.o \
./Core/Src/stm32/usb/usbd_desc.o \
./Core/Src/stm32/usb/usbd_ep_conf.o \
./Core/Src/stm32/usb/usbd_if.o 

C_DEPS += \
./Core/Src/stm32/usb/usb_device_core.d \
./Core/Src/stm32/usb/usb_device_ctlreq.d \
./Core/Src/stm32/usb/usb_device_ioreq.d \
./Core/Src/stm32/usb/usbd_conf.d \
./Core/Src/stm32/usb/usbd_desc.d \
./Core/Src/stm32/usb/usbd_ep_conf.d \
./Core/Src/stm32/usb/usbd_if.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/stm32/usb/%.o Core/Src/stm32/usb/%.su Core/Src/stm32/usb/%.cyclo: ../Core/Src/stm32/usb/%.c Core/Src/stm32/usb/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-stm32-2f-usb

clean-Core-2f-Src-2f-stm32-2f-usb:
	-$(RM) ./Core/Src/stm32/usb/usb_device_core.cyclo ./Core/Src/stm32/usb/usb_device_core.d ./Core/Src/stm32/usb/usb_device_core.o ./Core/Src/stm32/usb/usb_device_core.su ./Core/Src/stm32/usb/usb_device_ctlreq.cyclo ./Core/Src/stm32/usb/usb_device_ctlreq.d ./Core/Src/stm32/usb/usb_device_ctlreq.o ./Core/Src/stm32/usb/usb_device_ctlreq.su ./Core/Src/stm32/usb/usb_device_ioreq.cyclo ./Core/Src/stm32/usb/usb_device_ioreq.d ./Core/Src/stm32/usb/usb_device_ioreq.o ./Core/Src/stm32/usb/usb_device_ioreq.su ./Core/Src/stm32/usb/usbd_conf.cyclo ./Core/Src/stm32/usb/usbd_conf.d ./Core/Src/stm32/usb/usbd_conf.o ./Core/Src/stm32/usb/usbd_conf.su ./Core/Src/stm32/usb/usbd_desc.cyclo ./Core/Src/stm32/usb/usbd_desc.d ./Core/Src/stm32/usb/usbd_desc.o ./Core/Src/stm32/usb/usbd_desc.su ./Core/Src/stm32/usb/usbd_ep_conf.cyclo ./Core/Src/stm32/usb/usbd_ep_conf.d ./Core/Src/stm32/usb/usbd_ep_conf.o ./Core/Src/stm32/usb/usbd_ep_conf.su ./Core/Src/stm32/usb/usbd_if.cyclo ./Core/Src/stm32/usb/usbd_if.d ./Core/Src/stm32/usb/usbd_if.o ./Core/Src/stm32/usb/usbd_if.su

.PHONY: clean-Core-2f-Src-2f-stm32-2f-usb

