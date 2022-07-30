#include "vm_stack.hpp"
#include <iostream>
#include <fstream>

int main(int argc, char *argv[]){
    if (argc < 2){
        std::cout << "Usage: " << argv[0] << "<filename>" << '\n';
        return 0;
    }

    std::ifstream readFile(argv[1], std::ios::binary);

    i32 i;
    std::vector<i32>prog;

    while (readFile.read((char*)&i, sizeof(i))){
        prog.push_back(i);
    }

    StackVM stackvm;

    stackvm.loadProgram(prog);
    stackvm.run();

    return 0;

}