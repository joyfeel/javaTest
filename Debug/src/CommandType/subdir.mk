################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/CommandType/CCmdBufferLengthCaseReceiver.cpp \
../src/CommandType/CCmdDeviceTypeCaseReceiver.cpp \
../src/CommandType/CCmdEraseCaseReceiver.cpp \
../src/CommandType/CCmdEudaCaseReceiver.cpp \
../src/CommandType/CCmdGppCaseReceiver.cpp \
../src/CommandType/CCmdIndexReceiver.cpp \
../src/CommandType/CCmdInitializationReceiver.cpp \
../src/CommandType/CCmdReadCaseReceiver.cpp \
../src/CommandType/CCmdResetCaseReceiver.cpp \
../src/CommandType/CCmdSingleFileCaseReceiver.cpp \
../src/CommandType/CCmdSingleFileDiskCaseReceiver.cpp \
../src/CommandType/CCmdTestCaseReceiver.cpp \
../src/CommandType/CCmdTwoFileCaseReceiver.cpp \
../src/CommandType/CCmdWriteCaseReceiver.cpp \
../src/CommandType/CCmdWriteSleepCaseReceiver.cpp \
../src/CommandType/IReceiver.cpp 

OBJS += \
./src/CommandType/CCmdBufferLengthCaseReceiver.o \
./src/CommandType/CCmdDeviceTypeCaseReceiver.o \
./src/CommandType/CCmdEraseCaseReceiver.o \
./src/CommandType/CCmdEudaCaseReceiver.o \
./src/CommandType/CCmdGppCaseReceiver.o \
./src/CommandType/CCmdIndexReceiver.o \
./src/CommandType/CCmdInitializationReceiver.o \
./src/CommandType/CCmdReadCaseReceiver.o \
./src/CommandType/CCmdResetCaseReceiver.o \
./src/CommandType/CCmdSingleFileCaseReceiver.o \
./src/CommandType/CCmdSingleFileDiskCaseReceiver.o \
./src/CommandType/CCmdTestCaseReceiver.o \
./src/CommandType/CCmdTwoFileCaseReceiver.o \
./src/CommandType/CCmdWriteCaseReceiver.o \
./src/CommandType/CCmdWriteSleepCaseReceiver.o \
./src/CommandType/IReceiver.o 

CPP_DEPS += \
./src/CommandType/CCmdBufferLengthCaseReceiver.d \
./src/CommandType/CCmdDeviceTypeCaseReceiver.d \
./src/CommandType/CCmdEraseCaseReceiver.d \
./src/CommandType/CCmdEudaCaseReceiver.d \
./src/CommandType/CCmdGppCaseReceiver.d \
./src/CommandType/CCmdIndexReceiver.d \
./src/CommandType/CCmdInitializationReceiver.d \
./src/CommandType/CCmdReadCaseReceiver.d \
./src/CommandType/CCmdResetCaseReceiver.d \
./src/CommandType/CCmdSingleFileCaseReceiver.d \
./src/CommandType/CCmdSingleFileDiskCaseReceiver.d \
./src/CommandType/CCmdTestCaseReceiver.d \
./src/CommandType/CCmdTwoFileCaseReceiver.d \
./src/CommandType/CCmdWriteCaseReceiver.d \
./src/CommandType/CCmdWriteSleepCaseReceiver.d \
./src/CommandType/IReceiver.d 


# Each subdirectory must supply rules for building sources it contributes
src/CommandType/%.o: ../src/CommandType/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -I/usr/include/jsoncpp -I/opt/local/include/ -Os -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


