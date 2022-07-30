#include "vm_stack.hpp"

StackVM::StackVM(){
    memory.reserve(1000000);

}

/*
    Instruction format:

        Header: 2 bits
        Data: 30 bits

    Header format:
        0 -> Positive Integer
        1 -> Primitive instruction
        2 -> Negative Integer
        3 -> Undefined

*/

const i32 StackVM::getType(const i32 &instruction){
    i32 type = 0xc0000000;
    type = (type & instruction) >> 30;

    return type;
}

const i32 StackVM::getData(const i32 &instruction){
    i32 data = 0x3fffffff;
    data = data & instruction;

    return data;

}

const void StackVM::fetch(){
    pc++;
}

const void StackVM::decode(){
    typ = getType(memory[pc]);
    dat = getData(memory[pc]);

}

const void StackVM::execute(){
    if (typ == 0 || typ == 2){
        sp++;
        memory[sp] = dat;
    }else{
        doPrimitive();
    }
}

const void StackVM::doPrimitive(){

    switch(dat){
        case 0: // halt
            std::cout << "halt" << '\n';
            running = 0;
            break;
        case 1:
            std::cout << "Add " << memory[sp-1] << " " << memory[sp] << '\n';
            memory[sp-1] = memory[sp-1] + memory[sp];
            sp--;
            break;

        case 2: //sub
            std::cout << "Subtract " << memory[sp-1] << " " << memory[sp] << '\n';
            memory[sp-1] = memory[sp-1] - memory[sp];
            sp--;
            break;
        case 3: //mul
            std::cout << "Multiply " << memory[sp-1] << " " << memory[sp] << '\n';
            memory[sp-1] = memory[sp-1] * memory[sp];
            sp--;
            break;
        case 4: //div
            std::cout << "Divide " << memory[sp-1] << " " << memory[sp] << '\n';
            memory[sp-1] = memory[sp-1] / memory[sp];
            sp--;
            break;
    }

}

const void StackVM::run(){
    pc -= 1;
    while (running == 1){
        fetch();
        decode();
        execute();
        std::cout << "Top of stack: " << memory[sp] << '\n';
    }
}

const void StackVM::loadProgram(std::vector<i32> prog){
    for (i32 i{}; i < prog.size(); i++){
        memory[pc + i] = prog[i];
    }

}
