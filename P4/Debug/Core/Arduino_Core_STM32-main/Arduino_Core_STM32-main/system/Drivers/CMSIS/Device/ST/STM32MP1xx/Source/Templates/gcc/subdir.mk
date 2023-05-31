################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp151axx_cm4.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp151cxx_cm4.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp153axx_cm4.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp153cxx_cm4.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp157axx_cm4.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp157cxx_cm4.s \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp15xx.s 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp151axx_cm4.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp151cxx_cm4.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp153axx_cm4.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp153cxx_cm4.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp157axx_cm4.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp157cxx_cm4.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp15xx.o 

S_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp151axx_cm4.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp151cxx_cm4.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp153axx_cm4.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp153cxx_cm4.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp157axx_cm4.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp157cxx_cm4.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp15xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/%.o: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/%.s Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32MP1xx-2f-Source-2f-Templates-2f-gcc

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32MP1xx-2f-Source-2f-Templates-2f-gcc:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp151axx_cm4.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp151axx_cm4.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp151cxx_cm4.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp151cxx_cm4.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp153axx_cm4.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp153axx_cm4.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp153cxx_cm4.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp153cxx_cm4.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp157axx_cm4.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp157axx_cm4.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp157cxx_cm4.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp157cxx_cm4.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp15xx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp15xx.o

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32MP1xx-2f-Source-2f-Templates-2f-gcc

