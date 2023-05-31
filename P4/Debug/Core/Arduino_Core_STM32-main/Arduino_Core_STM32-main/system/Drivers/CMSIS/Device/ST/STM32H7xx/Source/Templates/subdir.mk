################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_boot_cm4_cm7.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm4_cm7gated.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm7_cm4gated.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_singlecore.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_boot_cm4_cm7.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm4_cm7gated.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm7_cm4gated.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_singlecore.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_boot_cm4_cm7.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm4_cm7gated.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm7_cm4gated.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_singlecore.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32H7xx-2f-Source-2f-Templates

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32H7xx-2f-Source-2f-Templates:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_boot_cm4_cm7.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_boot_cm4_cm7.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_boot_cm4_cm7.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_boot_cm4_cm7.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm4_cm7gated.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm4_cm7gated.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm4_cm7gated.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm4_cm7gated.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm7_cm4gated.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm7_cm4gated.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm7_cm4gated.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_dualcore_bootcm7_cm4gated.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_singlecore.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_singlecore.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_singlecore.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx_singlecore.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32H7xx-2f-Source-2f-Templates

