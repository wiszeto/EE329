################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_conf_template.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_desc_template.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_conf_template.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_desc_template.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_conf_template.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_desc_template.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Core-2f-Src

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Core-2f-Src:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_conf_template.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_conf_template.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_conf_template.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_conf_template.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_desc_template.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_desc_template.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_desc_template.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_desc_template.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Core-2f-Src

