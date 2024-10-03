/*strp.c is a file that creates functions to mimic the
string commands within stdio.h using pointer notation */

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
  char* strt = dst;

  assert(src != NULL);
  assert(dst != NULL);
  
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

  assert(s1 != NULL);
  assert(s2 != NULL);

  /*starts at the end of s1 to add s2*/
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

   assert(s1 != NULL);
   assert(s2 != NULL);

   while(*end1 != '\0')
   {
      /* difference in ascii values for result of comparison*/
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
  char *last_occurence = NULL;
  /*check determines if we have found a potential needle*/
  int check = 0;

  assert(haystack != NULL);
  assert(needle != NULL);

  /* no needle - empty */
  if(Str_getLength(needle) == 0){
    return (char*)(haystack);
  } 

  while(*haystack != '\0'){

    /* proceed to find validity of potential needle*/
    if(check == 1){
      if(*needle == '\0') return last_occurence;
      else if(*needle != *haystack){
        /*sets haystack back to an index 1 
        above when needle was found*/
        haystack = last_occurence + 1;
        check = 0;
        needle = startNeedle;
      }
      else if(*(needle + 1) == '\0' && *(haystack + 1) == '\0'){
        return last_occurence;
      }
      else needle++;
         
    }
    /*potential needle found*/
    if(check == 0 && *haystack == *needle){
      check = 1;
      last_occurence = (char*)(haystack);
      needle++;
    }
    haystack++;
  }
  return NULL;
}
