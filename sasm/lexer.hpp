#ifndef LEXER_HPP
#define LEXER_HPP

#include <iostream>
#include <vector>

typedef uint8_t byte;
typedef std::vector<std::string> strings;

enum State : byte {
    START,
    READCHAR,
    READBLOCK,
    SKIP,
    DUMP,
    COMMENT,
    END
};

class Lexer{
    private:
        const bool myIsSpace(const char &c);
        const bool myIsSpecial(const char &c);
        const bool isGroup(const char &c);

        char end_char, beg_char;

    public:
        const strings lex(const std::string &s);

};



#endif