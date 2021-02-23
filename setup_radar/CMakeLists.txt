cmake_minimum_required(VERSION 3.10)
project(MMWaveSetup)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_FLAGS -pthread)

include_directories(ti/example/mmwavelink_example_nonos)
include_directories(ti/example/platform)
include_directories(ti/example/platform/mmwlstudio)
include_directories(FTDILib/SourceCode)
include_directories(".")

add_executable(setup_radar
        ti/example/mmwavelink_example_nonos/crc_compute.c
        ti/example/mmwavelink_example_nonos/mmw_config.c
        ti/example/mmwavelink_example_nonos/mmw_config.h
        ti/example/mmwavelink_example_nonos/mmw_example_nonos.c
        ti/example/mmwavelink_example_nonos/mmw_example_nonos.h
        ti/example/mmwavelink_example_nonos/rl_nonos.cpp
        ti/example/mmwavelink_example_nonos/rl_nonos.h
        FTDILib/SourceCode/mmwl_port_ftdi.h
        FTDILib/SourceCode/mmwl_port_ftdi.cpp

        ti/example/platform/mmwlstudio/rls_osi.h
        ti/example/platform/mmwlstudio/rls_studio.h

        ti/control/mmwavelink/include/rl_controller.h
        ti/control/mmwavelink/include/rl_datatypes.h
        ti/control/mmwavelink/include/rl_device.h
        ti/control/mmwavelink/include/rl_driver.h
        ti/control/mmwavelink/include/rl_events.h
        ti/control/mmwavelink/include/rl_messages.h
        ti/control/mmwavelink/include/rl_monitoring.h
        ti/control/mmwavelink/include/rl_protocol.h
        ti/control/mmwavelink/include/rl_sensor.h
        ti/control/mmwavelink/include/rl_trace.h
        ti/control/mmwavelink/src/rl_controller.c
        ti/control/mmwavelink/src/rl_device.c
        ti/control/mmwavelink/src/rl_driver.c
        ti/control/mmwavelink/src/rl_monitoring.c
        ti/control/mmwavelink/src/rl_sensor.c
        )

target_link_libraries(setup_radar /usr/local/lib/libftd2xx.so)