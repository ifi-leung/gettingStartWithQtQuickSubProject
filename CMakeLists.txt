cmake_minimum_required(VERSION 3.16)

project(gettingStartWithQtQuickSubProject VERSION 0.1 LANGUAGES CXX C)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/math)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

file(GLOB_RECURSE SRC_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.h
)

message("SRC_FILES=${SRC_FILES}")

qt_add_resources(SRC_FILES gettingStartWithQtQuickSubProject.qrc)

link_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/libs)
link_libraries(math)

qt_add_executable(${PROJECT_NAME}
    ${SRC_FILES}
)

set_target_properties(${PROJECT_NAME} PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE Qt6::Quick)

install(TARGETS ${PROJECT_NAME}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
