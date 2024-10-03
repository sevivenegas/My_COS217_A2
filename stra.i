# 0 "stra.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "stra.c"
# 9 "stra.c"
# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4

# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 10 "stra.c" 2
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



# 11 "stra.c" 2
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
# 12 "stra.c" 2

size_t Str_getLength(const char pcSrc[])
{
   size_t uLength = 0;
   
# 16 "stra.c" 3 4
  ((
# 16 "stra.c"
  pcSrc != 
# 16 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 16 "stra.c"
  "pcSrc != NULL"
# 16 "stra.c" 3 4
  , "stra.c", 16, __extension__ __PRETTY_FUNCTION__))
# 16 "stra.c"
                       ;
   while (pcSrc[uLength] != '\0')
      uLength++;
   return uLength;
}

char* Str_copy(char dst[], const char src[])
{
   size_t i = 0;
   
# 25 "stra.c" 3 4
  ((
# 25 "stra.c"
  src != 
# 25 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 25 "stra.c"
  "src != NULL"
# 25 "stra.c" 3 4
  , "stra.c", 25, __extension__ __PRETTY_FUNCTION__))
# 25 "stra.c"
                     ;
   
# 26 "stra.c" 3 4
  ((
# 26 "stra.c"
  dst != 
# 26 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 26 "stra.c"
  "dst != NULL"
# 26 "stra.c" 3 4
  , "stra.c", 26, __extension__ __PRETTY_FUNCTION__))
# 26 "stra.c"
                     ;
   while(src[i] != '\0'){
      dst[i] = src[i];
      i++;
   }
   dst[i] = '\0';
   return &dst[0];
}

char* Str_concat(char s1[], const char s2[])
{
   size_t l = Str_getLength(s1);
   size_t i = 0;

   
# 40 "stra.c" 3 4
  ((
# 40 "stra.c"
  s1 != 
# 40 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 40 "stra.c"
  "s1 != NULL"
# 40 "stra.c" 3 4
  , "stra.c", 40, __extension__ __PRETTY_FUNCTION__))
# 40 "stra.c"
                    ;
   
# 41 "stra.c" 3 4
  ((
# 41 "stra.c"
  s2 != 
# 41 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 41 "stra.c"
  "s2 != NULL"
# 41 "stra.c" 3 4
  , "stra.c", 41, __extension__ __PRETTY_FUNCTION__))
# 41 "stra.c"
                    ;

   while(s2[i] != '\0'){

      s1[l + i] = s2[i];
      i++;
   }
   s1[l + i] = '\0';
   return &s1[0];
}

int Str_compare(const char s1[], const char s2[])
{
   size_t i = 0;

   
# 56 "stra.c" 3 4
  ((
# 56 "stra.c"
  s1 != 
# 56 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 56 "stra.c"
  "s1 != NULL"
# 56 "stra.c" 3 4
  , "stra.c", 56, __extension__ __PRETTY_FUNCTION__))
# 56 "stra.c"
                    ;
   
# 57 "stra.c" 3 4
  ((
# 57 "stra.c"
  s2 != 
# 57 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 57 "stra.c"
  "s2 != NULL"
# 57 "stra.c" 3 4
  , "stra.c", 57, __extension__ __PRETTY_FUNCTION__))
# 57 "stra.c"
                    ;

   while(s1[i] != '\0')
   {

      int compareVal = (int)s1[i] - (int)s2[i];
      if(compareVal < 0) return -1;
      else if(compareVal > 0) return 1;
      i++;
   }
   if(Str_getLength(s1) < Str_getLength(s2)) return -1;
   return 0;
}

char* Str_search(const char haystack[], const char needle[])
{

   int check = 0;
   size_t last_occurence = 0;
   size_t i = 0;
   size_t j = 0;

   
# 79 "stra.c" 3 4
  ((
# 79 "stra.c"
  haystack != 
# 79 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 79 "stra.c"
  "haystack != NULL"
# 79 "stra.c" 3 4
  , "stra.c", 79, __extension__ __PRETTY_FUNCTION__))
# 79 "stra.c"
                          ;
   
# 80 "stra.c" 3 4
  ((
# 80 "stra.c"
  needle != 
# 80 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 80 "stra.c"
  "needle != NULL"
# 80 "stra.c" 3 4
  , "stra.c", 80, __extension__ __PRETTY_FUNCTION__))
# 80 "stra.c"
                        ;


   if(Str_getLength(needle) == 0){
      return (char*)(&haystack[0]);
   }

   while(haystack[i] != '\0'){

      if(check == 1){
         if(needle[j] == '\0') return (char*)&haystack[last_occurence];
         else if(needle[j] != haystack[i]){


            i = last_occurence + 1;
            check = 0;
            j = 0;
         }

         else if(needle[j+1] == '\0' && haystack[i+1] == '\0'){
            return (char*)(&haystack[last_occurence]);
         }
         else j++;
      }
      if(check == 0 && haystack[i] == needle[0]){
         check = 1;
         last_occurence = i;
         j++;
      }
      i++;
   }
   return 
# 111 "stra.c" 3 4
         ((void *)0)
# 111 "stra.c"
             ;
}
