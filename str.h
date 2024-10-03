#include <stddef.h>
#include <assert.h>

#ifndef STR_COMMANDS
#define STR_COMMANDS

/*return the length of string pcSrc*/
size_t Str_getLength(const char *pcSrc);

/*returns string dst after string src is copied inside*/
char* Str_copy(char *dst, const char *src);

/*returns string s1 after string s2 is add to end of s1*/
char* Str_concat(char *s1, const char *s2);

/*return int comparing string s1 to string s2
-1: less than 0: equivalent 1: more than */
int Str_compare(const char *s1, const char *s2);

/*returns pointer of index where string needle is found in
string haystack. Otherwise returns NULL*/ 
char* Str_search(const char *haystack, const char *needle);

#endif





