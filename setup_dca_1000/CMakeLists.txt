cmake_minimum_required(VERSION 3.10)
project(untitled2)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_CXX_FLAGS -pthread)


add_executable(setup_dca_1000 cli_setup.cpp
        Common/Osal_Utils/osal.h
        Common/Osal_Utils/osal_linux.cpp
        Common/Json_Utils/dist/json/json.h
        Common/Json_Utils/dist/jsoncpp.cpp
        Common/globals.h
        Common/rf_api_internal.h
        Common/errcodes.h
        Common/DCA1000_API/dca_types.h
        Common/DCA1000_API/rf_api.h
        Common/Validate_Utils/validate_params.cpp
        Common/Validate_Utils/validate_params.h
        RF_API/commandsprotocol.cpp
        RF_API/commandsprotocol.h
        RF_API/configdatarecv.cpp
        RF_API/configdatarecv.h
        RF_API/defines.h
#        RF_API/extern.h
        RF_API/recorddatarecv.cpp
        RF_API/recorddatarecv.h
        RF_API/rf_api.cpp)