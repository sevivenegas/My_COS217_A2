/*strp.c is a file that creates functions to mimic the
string commands within stdio.h using array notation */

#include <stddef.h>
#include <assert.h>

size_t Str_getLength(const char pcSrc[])
{
   size_t uLength = 0;
   assert(pcSrc != NULL);
   while (pcSrc[uLength] != '\0')
      uLength++;
   return uLength;
}

char* Str_copy(char dst[], const char src[])
{
   size_t i = 0;
   assert(src != NULL);
   assert(dst != NULL);
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

   assert(s1 != NULL);
   assert(s2 != NULL);
   
   while(s2[i] != '\0'){
      /*move i indexes from end of s1*/
      s1[l + i] = s2[i];
      i++;
   }
   s1[l + i] = '\0';
   return &s1[0];
}

int Str_compare(const char s1[], const char s2[])
{
   size_t i = 0;

   assert(s1 != NULL);
   assert(s2 != NULL);
   
   while(s1[i] != '\0')
   {
      /* difference in ascii values for result of comparison*/
      int compareVal = s1[i] - s2[i];
      if(compareVal < 0) return -1;
      else if(compareVal > 0) return 1;
      i++;
   }
   if(Str_getLength(s1) < Str_getLength(s2)) return -1;
   return 0;
}

char* Str_search(const char haystack[], const char needle[])
{
   /*check determines if we have found a potential needle*/
   int check = 0;
   size_t last_occurence = 0;
   size_t i = 0;
   size_t j = 0;

   assert(haystack != NULL);
   assert(needle != NULL);

   /* no needle - empty */
   if(Str_getLength(needle) == 0){
      return (char*)(&haystack[0]);
   }

   while(haystack[i] != '\0'){
      /* proceed to find validity of potential needle*/
      if(check == 1){
         if(needle[j] == '\0') return (char*)&haystack[last_occurence];
         else if(needle[j] != haystack[i]){
            /*sets haystack back to an index 1 
            above when needle was found*/
            i = last_occurence + 1;
            check = 0;
            j = 0;
         }
         /*potential needle found*/
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
   return NULL;
}
