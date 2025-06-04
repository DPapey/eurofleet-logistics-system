cmake_minimum_required(VERSION 3.10)
project(EurofleetLogisticsSystem)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(PkgConfig REQUIRED)
pkg_check_modules(LIBPQXX REQUIRED libpqxx)

include_directories(${LIBPQXX_INCLUDE_DIRS})
link_directories(${LIBPQXX_LIBRARY_DIRS})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/cpp/output)

add_executable(myapp cpp/main.cpp cpp/db/db.cpp)

target_link_libraries(myapp ${LIBPQXX_LIBRARIES})
