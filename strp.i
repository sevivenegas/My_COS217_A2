# 0 "strp.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "strp.c"
# 9 "strp.c"
# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4

# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 10 "strp.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 490 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 551 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 552 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 553 "/usr/include/sys/cdefs.h" 2 3 4
# 491 "/usr/include/features.h" 2 3 4
# 514 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 515 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4



extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 11 "strp.c" 2
# 1 "str.h" 1





# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 7 "str.h" 2
# 1 "/usr/include/assert.h" 1 3 4
# 64 "/usr/include/assert.h" 3 4



extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 8 "str.h" 2






# 13 "str.h"
size_t Str_getLength(const char *pcSrc);


char* Str_copy(char *dst, const char *src);


char* Str_concat(char *s1, const char *s2);



int Str_compare(const char *s1, const char *s2);



char* Str_search(const char *haystack, const char *needle);
# 12 "strp.c" 2


size_t Str_getLength(const char *pcSrc)
{
  const char *pcEnd;
  
# 17 "strp.c" 3 4
 ((
# 17 "strp.c"
 pcSrc != 
# 17 "strp.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 17 "strp.c"
 "pcSrc != NULL"
# 17 "strp.c" 3 4
 , "strp.c", 17, __extension__ __PRETTY_FUNCTION__))
# 17 "strp.c"
                      ;
  pcEnd = pcSrc;
  while (*pcEnd != '\0')
      pcEnd++;
  return (size_t)(pcEnd - pcSrc);
}

char* Str_copy(char *dst, const char *src)
{
  char* strt = dst;

  
# 28 "strp.c" 3 4
 ((
# 28 "strp.c"
 src != 
# 28 "strp.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 28 "strp.c"
 "src != NULL"
# 28 "strp.c" 3 4
 , "strp.c", 28, __extension__ __PRETTY_FUNCTION__))
# 28 "strp.c"
                    ;
  
# 29 "strp.c" 3 4
 ((
# 29 "strp.c"
 dst != 
# 29 "strp.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 29 "strp.c"
 "dst != NULL"
# 29 "strp.c" 3 4
 , "strp.c", 29, __extension__ __PRETTY_FUNCTION__))
# 29 "strp.c"
                    ;

  while(*src != '\0'){
    *dst = *src;
    dst++;
    src++;
  }
  *dst = '\0';
  return strt;
}

char* Str_concat(char *s1, const char *s2)
{

  char *start = s1;
  const char *end = s2;

  
# 46 "strp.c" 3 4
 ((
# 46 "strp.c"
 s1 != 
# 46 "strp.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 46 "strp.c"
 "s1 != NULL"
# 46 "strp.c" 3 4
 , "strp.c", 46, __extension__ __PRETTY_FUNCTION__))
# 46 "strp.c"
                   ;
  
# 47 "strp.c" 3 4
 ((
# 47 "strp.c"
 s2 != 
# 47 "strp.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 47 "strp.c"
 "s2 != NULL"
# 47 "strp.c" 3 4
 , "strp.c", 47, __extension__ __PRETTY_FUNCTION__))
# 47 "strp.c"
                   ;


  s1 = s1 + Str_getLength(s1);

  while(*end != '\0'){
    *s1 = *end;
    s1++;
    end++;
  }
  *s1 = '\0';
  return start;
}

int Str_compare(const char *s1, const char *s2)
{
   const char *end1 = s1;
   const char *end2 = s2;

   
# 66 "strp.c" 3 4
  ((
# 66 "strp.c"
  s1 != 
# 66 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 66 "strp.c"
  "s1 != NULL"
# 66 "strp.c" 3 4
  , "strp.c", 66, __extension__ __PRETTY_FUNCTION__))
# 66 "strp.c"
                    ;
   
# 67 "strp.c" 3 4
  ((
# 67 "strp.c"
  s2 != 
# 67 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 67 "strp.c"
  "s2 != NULL"
# 67 "strp.c" 3 4
  , "strp.c", 67, __extension__ __PRETTY_FUNCTION__))
# 67 "strp.c"
                    ;

   while(*end1 != '\0')
   {

      int compareVal = (int)(*end1 - *end2);
      if(compareVal < 0) return -1;
      else if(compareVal > 0) return 1;
      end1++;
      end2++;
   }
   if(Str_getLength(s1) < Str_getLength(s2)) return -1;
   return 0;
}

char* Str_search(const char *haystack, const char *needle)
{
  const char *startNeedle = needle;
  char *last_occurence = 
# 85 "strp.c" 3 4
                        ((void *)0)
# 85 "strp.c"
                            ;

  int check = 0;

  
# 89 "strp.c" 3 4
 ((
# 89 "strp.c"
 haystack != 
# 89 "strp.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 89 "strp.c"
 "haystack != NULL"
# 89 "strp.c" 3 4
 , "strp.c", 89, __extension__ __PRETTY_FUNCTION__))
# 89 "strp.c"
                         ;
  
# 90 "strp.c" 3 4
 ((
# 90 "strp.c"
 needle != 
# 90 "strp.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 90 "strp.c"
 "needle != NULL"
# 90 "strp.c" 3 4
 , "strp.c", 90, __extension__ __PRETTY_FUNCTION__))
# 90 "strp.c"
                       ;


  if(Str_getLength(needle) == 0){
    return (char*)(haystack);
  }

  while(*haystack != '\0'){


    if(check == 1){
      if(*needle == '\0') return last_occurence;
      else if(*needle != *haystack){


        haystack = last_occurence + 1;
        check = 0;
        needle = startNeedle;
      }
      else if(*(needle + 1) == '\0' && *(haystack + 1) == '\0'){
        return last_occurence;
      }
      else needle++;

    }

    if(check == 0 && *haystack == *needle){
      check = 1;
      last_occurence = (char*)(haystack);
      needle++;
    }
    haystack++;
  }
  return 
# 123 "strp.c" 3 4
        ((void *)0)
# 123 "strp.c"
            ;
}
