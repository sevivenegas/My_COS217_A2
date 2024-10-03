#include <stddef.h>
#include <assert.h>

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
  assert(src != NULL);

  char *end = src;
  char *strt = dst;
  
  while(*end != '\0'){
    *dst = *end;
    dst++;
    end++;
  }
  *dst = '\0';
  return strt;
}

char* Str_concat(char *s1, const char *s2)
{
  assert(s1 != NULL);
  assert(s2 != NULL);

  char *start = s1;
  /* ask if you need to add one so it starts on \0 of s1*/
  s1 = s1 + Str_getLength(s1);
  char *end = s2;

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
   /* do we assume they are the same size?*/
   assert(s1 != NULL);
   assert(s2 != NULL);

   char *end1 = s1;
   char *end2 = s2;
   while(*end1 != '\0')
   {
      int x = *end1 - *end2;
      if(x < 0) return -1;
      else if(x > 0) return 1;
      end1++;
      end2++;
   }
   if(Str_getLength(s1) < Str_getLength(s2)) return -1;
   return 0;
}

char* Str_search(const char *haystack, const char *needle)
{
  assert(haystack != NULL);
  assert(needle != NULL);

  if(Str_getLength(needle) == 0) return haystack;

  int check = 0;
  char *last_occurence = 0;
  char *startNeedle = needle;


  /* will the while loop go over \0 too? */
  while(*haystack != NULL){

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
      last_occurence = haystack;
      needle++;
    }
    haystack++;
  }
  return NULL;
}
