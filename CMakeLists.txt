cmake_minimum_rquired(VERSION 3.16)
project(CG01 VERSION 0.0.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -Wall -fconcepts")

find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)

file(GLOB_RECURSE HEADERS include/*.h)
file(GLOB_RECURSE SOURCES src/*.cc)

file(GLOB_RECURSE VENDOR_HEADERS vendor/include/*.h)
file(GLOB_RECURSE VENDOR_SOURCES vendor/src/*.cc vendor/src/*.c)

include_directories(vendor/include)

add_executable(CG01 ${VENDOR_HEADERS} ${VENDOR_SOURCES} ${HEADERS} ${SOURCES} triangle.cc)
target_link_libraries(CG01_Triangle OpenGL::GL glfw -lx11 -ldl)

add_executable(CG01 ${VENDOR_HEADERS} ${VENDOR_SOURCES} ${HEADERS} ${SOURCES} cube.cc)
target_link_libraries(CG01_Cube OpenGL::GL glfw -lx11 -ldl)
