#include <iostream>
#include <fstream>
#include "lexer.hpp"

#define LOG(x) std::cout << x << '\n'

typedef uint32_t i32;

const std::vector<i32> compileToInstructions(const strings &s);
const bool isInteger(const std::string &s);
const bool isPrimitive(const std::string &s);
const i32 mapToNumber(const std::string &s);

int main(int argc, char *argv[]){
    //Search for input errors
    if (argc != 2){
        std::cout << "Usage: " << argv[0] << "<sasm filename>" << '\n';
        exit(1);
    }

    // Reading the passed file
    std::ifstream infile;
    infile.open(argv[1]);

    if (!infile.is_open()){
        LOG("ERROR: Could not open file: ");
        LOG(argv[1]);
        exit(1);
    }

    std::string line;
    std::string contents;

    while (std::getline(infile, line)){
        contents += line + '\n';
    }
    infile.close();

    //Parsing file
    Lexer lexer;
    strings lexemes = lexer.lex(contents);

    //Compile to binary
    std::vector<i32> instructions = compileToInstructions(lexemes);

    //Write to binary file
    std::ofstream ofile;
    ofile.open("out.bin", std::ios::binary);

    for (i32 i{}; i < instructions.size(); ++i){
        ofile.write(reinterpret_cast<char *>(&instructions[i]), sizeof(i32));
    }

    ofile.close();
    return 0;


}

const std::vector<i32> compileToInstructions(const strings &s){
    std::vector<i32> instructions;
    for (i32 i{}; i < s.size(); ++i){
        if (isInteger(s[i])){
            instructions.push_back(std::stoi(s[i]));
        }else{
            i32 instruction{mapToNumber(s[i])};
            if (instruction != -1){
                instructions.push_back(instruction);
            }else{
                LOG("ERROR: Invalid instruction");
                LOG(s[i]);
            }
        }

    }

    instructions.push_back(0x40000000); // Always halt at the end
    return instructions;
}

const bool isInteger(const std::string &s){
    for (i32 i{}; i < s.length(); ++i){
        if (!isdigit(s[i])){
            return false;
        }
    }

    return true;
}

const i32 mapToNumber(const std::string &s){
    if (s == "+"){
        return 0x40000001;
    }else if (s == "-"){
        return 0x40000002;
    }else if (s == "*"){
        return 0x40000003;
    }else if (s == "/"){
        return 0x40000004;
    }

    return -1; // Invalid instruction
}
