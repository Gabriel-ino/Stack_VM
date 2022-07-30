#ifndef VM_STACK_HPP
#define VM_STACK_HPP

#include <iostream>
#include <vector>

typedef int32_t i32;

class StackVM{
    private:
        i32 pc{100}; // Program Counter
        i32 sp{0}; // Stack Pointer
        i32 running{1};
        std::vector<i32> memory;
        i32 typ{0};
        i32 dat{0};

        const i32 getType(const i32 &instruction);
        const i32 getData(const i32 &instruction);
        const void fetch();
        const void decode();
        const void execute();
        const void doPrimitive();

    public:
        StackVM();
        const void run();
        const void loadProgram(std::vector<i32> prog); 




};

#endif