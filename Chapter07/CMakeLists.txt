# Minimum CMake version required
cmake_minimum_required(VERSION 3.10)

# Project name and version
project(Chap7 VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(OPENAL_LIBRARY ${PROJECT_SOURCE_DIR}/../SFML/extlibs/libs-msvc/x64/openal32.lib)


# Add source files
file(GLOB SOURCES ${PROJECT_SOURCE_DIR}/Ball.cpp
				  ${PROJECT_SOURCE_DIR}/Bat.cpp
				  ${PROJECT_SOURCE_DIR}/Pong.cpp)

# Add the executable
add_executable(Chap7 ${SOURCES})

include_directories(${PROJECT_SOURCE_DIR}/../SFML/include)

link_directories(${PROJECT_SOURCE_DIR}/../SFML/lib)

# Link the executable to the libraries in the lib directory
target_link_libraries(Chap7 PUBLIC sfml-graphics sfml-system sfml-window)

set_target_properties(
    Chap7 PROPERTIES
    VS_DEBUGGER_WORKING_DIRECTORY "${COMMON_OUTPUT_DIR}/bin"
)

file(COPY "${PROJECT_SOURCE_DIR}/fonts" DESTINATION "${COMMON_OUTPUT_DIR}/bin/")