# Minimum CMake version required
cmake_minimum_required(VERSION 3.10)

# Project name and version
project(Hmk1 VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)


# Attempt to find OpenAL package
#find_package(OpenAL REQUIRED)

# Add the include directories for OpenAL
include_directories(${OPENAL_INCLUDE_DIR})


# Add source files
file(GLOB SOURCES ${PROJECT_SOURCE_DIR}/code/Hmk1.cpp)

# Add the executable
add_executable(Hmk1 ${SOURCES})

include_directories(${PROJECT_SOURCE_DIR}/../SFML/include)

link_directories(${PROJECT_SOURCE_DIR}/../SFML/lib)

# Link the executable to the libraries in the lib directory
target_link_libraries(Hmk1 PUBLIC sfml-graphics sfml-system sfml-window)

#file(COPY "${PROJECT_SOURCE_DIR}/graphics" DESTINATION "${COMMON_OUTPUT_DIR}/bin/")
#file(COPY "${PROJECT_SOURCE_DIR}/fonts" DESTINATION "${COMMON_OUTPUT_DIR}/bin/")
#file(COPY "${PROJECT_SOURCE_DIR}/low res" DESTINATION "${COMMON_OUTPUT_DIR}/bin/")
#file(COPY "${PROJECT_SOURCE_DIR}/sound" DESTINATION "${COMMON_OUTPUT_DIR}/bin/")
