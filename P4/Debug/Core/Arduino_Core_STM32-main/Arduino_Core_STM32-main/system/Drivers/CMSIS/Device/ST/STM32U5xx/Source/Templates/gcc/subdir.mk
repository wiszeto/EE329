################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u535xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u545xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u575xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u585xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u595xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u599xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a5xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a9xx.s 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u535xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u545xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u575xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u585xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u595xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u599xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a5xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a9xx.o 

S_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u535xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u545xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u575xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u585xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u595xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u599xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a5xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a9xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/%.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/%.s Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32U5xx-2f-Source-2f-Templates-2f-gcc

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32U5xx-2f-Source-2f-Templates-2f-gcc:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u535xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u535xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u545xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u545xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u575xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u575xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u585xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u585xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u595xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u595xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u599xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u599xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a5xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a5xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a9xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32U5xx/Source/Templates/gcc/startup_stm32u5a9xx.o

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32U5xx-2f-Source-2f-Templates-2f-gcc

