cmake_minimum_required(VERSION 3.16)
project(testclassapp)

# Find Qt5 or Qt6
find_package(Qt6 QUIET COMPONENTS Core)
if(NOT Qt6_FOUND)
    find_package(Qt5 REQUIRED COMPONENTS Core)
endif()

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Enable automatic MOC processing
set(CMAKE_AUTOMOC ON)

# Add executable
add_executable(testclassapp
    main.cpp
    testclass.hpp
)

# Link Qt libraries
if(Qt6_FOUND)
    target_link_libraries(testclassapp Qt6::Core)
else()
    target_link_libraries(testclassapp Qt5::Core)
endif()
