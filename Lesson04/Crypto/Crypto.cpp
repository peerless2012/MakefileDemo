#include "Crypto.h"

std::string md5(std::string input) {
    reverse(input.begin(), input.end()); 
    return input;
}