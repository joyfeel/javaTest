################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/CommandFactory/CCommandFactory.cpp \
../src/CommandFactory/CFactory.cpp \
../src/CommandFactory/CHandler.cpp \
../src/CommandFactory/CType1CommandHandler.cpp \
../src/CommandFactory/CType2CommandHandler.cpp \
../src/CommandFactory/CType3CommandHandler.cpp 

OBJS += \
./src/CommandFactory/CCommandFactory.o \
./src/CommandFactory/CFactory.o \
./src/CommandFactory/CHandler.o \
./src/CommandFactory/CType1CommandHandler.o \
./src/CommandFactory/CType2CommandHandler.o \
./src/CommandFactory/CType3CommandHandler.o 

CPP_DEPS += \
./src/CommandFactory/CCommandFactory.d \
./src/CommandFactory/CFactory.d \
./src/CommandFactory/CHandler.d \
./src/CommandFactory/CType1CommandHandler.d \
./src/CommandFactory/CType2CommandHandler.d \
./src/CommandFactory/CType3CommandHandler.d 


# Each subdirectory must supply rules for building sources it contributes
src/CommandFactory/%.o: ../src/CommandFactory/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/include/jsoncpp/json -I/opt/local/include/ -O1 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


