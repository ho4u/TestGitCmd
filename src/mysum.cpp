#include <iostream>
#include "mysum.hpp"

int mysum(int a, int b)
{
    return a + b;
}

int print()
{
    std::cout << "Goodbye!" << std::endl;
    return 0;
}

int substr(const char *text, int text_sz, const char *words, int words_sz)
{
    for(size_t i = 0; i <= text_sz - words_sz; ++i)
    {
        size_t j;
        for(j = 0; j != words_sz; ++j)
        {
            if (text[i + j] != words[j])
                break;
        }
        if(j == words_sz)
            return i;
    }
    return -1;
}