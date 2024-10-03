#include <stddef.h>
#include <assert.h>

#ifndef STR_COMMANDS
#define STR_COMMANDS


size_t Str_getLength(const char pcSrc[]);

char* Str_copy(char dst[], const char src[]);

char* Str_concat(char s1[], const char s2[]);

int Str_compare(const char s1[], const char s2[]);

char* Str_search(const char haystack[], const char needle[]);

#endif





