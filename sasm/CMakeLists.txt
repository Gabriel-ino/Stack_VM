cmake_minimum_required(VERSION 3.12)

project(Sasm_Compiler)

add_executable(sasm
    "sasm.cpp"
    "lexer.cpp"
    "lexer.hpp"

)