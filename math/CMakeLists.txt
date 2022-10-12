cmake_minimum_required(VERSION 3.16)

project(math)

set(CMAKE_AUTOMOC ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core)

aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src DIR_SRCS)

include_directories(${CMAKE_SOURCE_DIR}/src/include)

SET(LIBRARY_OUTPUT_PATH "${CMAKE_SOURCE_DIR}/src/libs")

add_library(${PROJECT_NAME} STATIC ${DIR_SRCS})

target_link_libraries(${PROJECT_NAME} Qt${QT_VERSION_MAJOR}::Core)
