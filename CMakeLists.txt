cmake_minimum_required(VERSION 3.12)

project(StackVM)

add_executable(StackVM
    "vm_stack/main.cpp"
    "vm_stack/vm_stack.cpp"
    "vm_stack//vm_stack.hpp"

)