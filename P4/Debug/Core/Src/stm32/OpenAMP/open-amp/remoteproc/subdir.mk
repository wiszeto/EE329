################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/stm32/OpenAMP/open-amp/remoteproc/remoteproc_virtio.c 

OBJS += \
./Core/Src/stm32/OpenAMP/open-amp/remoteproc/remoteproc_virtio.o 

C_DEPS += \
./Core/Src/stm32/OpenAMP/open-amp/remoteproc/remoteproc_virtio.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/stm32/OpenAMP/open-amp/remoteproc/%.o Core/Src/stm32/OpenAMP/open-amp/remoteproc/%.su Core/Src/stm32/OpenAMP/open-amp/remoteproc/%.cyclo: ../Core/Src/stm32/OpenAMP/open-amp/remoteproc/%.c Core/Src/stm32/OpenAMP/open-amp/remoteproc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-stm32-2f-OpenAMP-2f-open-2d-amp-2f-remoteproc

clean-Core-2f-Src-2f-stm32-2f-OpenAMP-2f-open-2d-amp-2f-remoteproc:
	-$(RM) ./Core/Src/stm32/OpenAMP/open-amp/remoteproc/remoteproc_virtio.cyclo ./Core/Src/stm32/OpenAMP/open-amp/remoteproc/remoteproc_virtio.d ./Core/Src/stm32/OpenAMP/open-amp/remoteproc/remoteproc_virtio.o ./Core/Src/stm32/OpenAMP/open-amp/remoteproc/remoteproc_virtio.su

.PHONY: clean-Core-2f-Src-2f-stm32-2f-OpenAMP-2f-open-2d-amp-2f-remoteproc

