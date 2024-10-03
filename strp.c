#include <stddef.h>

size_t Str_getLength(const char *pcSrc)
{
  const char *pcEnd;
  assert(pcSrc != NULL);
  pcEnd = pcSrc;
  while (*pcEnd != '\0')
      pcEnd++;
  return (size_t)(pcEnd - pcSrc);
}

char* Str_copy(char *dst, const char *src)
{
  char *strt = dst;
  
  while(*src != '\0'){
    *dst = *src;
    dst++;
    src++;
  }
  *dst = '\0';
  return *strt;
}

char* Str_concat(char *s1, const char *s2)
{
  assert(s1 != NULL && s2 != NULL);
  /* ask if you need to add one so it starts on \0 of s1*/
  s1 = s1 + Str_getLength(s1);

  while(*s2 != '\0'){
    *s1 = *s2;
    s1++;
    s2++;
  }
  *s1 = '\0';
  return s1;
}

int Str_compare(const char *s1, const char *s2)
{
   /* do we assume they are the same size?*/
   assert(s1 != NULL && s2 != NULL);
   while(*s1 != '\0')
   {
      int x = *s1 - *s2;
      if(x < 0) return -1;
      else if(x > 0) return 1;
      s1++;
      s2++;
   }
   return 0;
}

char* Str_search(const char *haystack, const char *needle)
{
  assert(haystack != NULL);
  int check = 0;
  char *last_occurence = 0;
  char *startNeedle = needle;
  size_t i = 0;

  /* will the while loop go over \0 too? */
  while(*haystack != NULL){

    if(check == 1){
      if(*needle == '\0') return last_occurence;
      else if(*needle != *haystack){
        check = 0;
        needle = startNeedle;
      }
      else needle++;
         
    }
    else if(check == 0 && *haystack == *needle){
      check = 1;
      last_occurence = haystack;
      needle++;
    }
    haystack++;
  }
  return NULL;
}
