################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_bot.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_data.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_scsi.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_storage_template.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_bot.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_data.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_scsi.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_storage_template.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_bot.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_data.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_scsi.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_storage_template.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-MSC-2f-Src

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-MSC-2f-Src:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_bot.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_bot.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_bot.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_bot.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_data.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_data.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_data.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_data.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_scsi.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_scsi.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_scsi.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_scsi.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_storage_template.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_storage_template.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_storage_template.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_storage_template.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-MSC-2f-Src

