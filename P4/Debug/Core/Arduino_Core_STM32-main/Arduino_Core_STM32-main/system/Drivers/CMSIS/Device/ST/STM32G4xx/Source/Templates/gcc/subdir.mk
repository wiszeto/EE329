################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g431xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g441xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g471xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g473xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g474xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g483xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g484xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g491xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g4a1xx.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32gbk1cb.s 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g431xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g441xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g471xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g473xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g474xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g483xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g484xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g491xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g4a1xx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32gbk1cb.o 

S_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g431xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g441xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g471xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g473xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g474xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g483xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g484xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g491xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g4a1xx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32gbk1cb.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/%.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/%.s Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32G4xx-2f-Source-2f-Templates-2f-gcc

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32G4xx-2f-Source-2f-Templates-2f-gcc:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g431xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g431xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g441xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g441xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g471xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g471xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g473xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g473xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g474xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g474xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g483xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g483xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g484xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g484xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g491xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g491xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g4a1xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32g4a1xx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32gbk1cb.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/gcc/startup_stm32gbk1cb.o

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32G4xx-2f-Source-2f-Templates-2f-gcc

