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

/* void return? return char pointer*/
char* Str_copy(char dst[], const char src[])
{
   size_t i = 0;
   assert(src != NULL);
   while(src[i] != '\0'){
      dst[i] = src[i];
      i++;
   }
   dst[i] = '\0';
   return &dst[0];
}

/* void return? */
char* Str_concat(char s1[], const char s2[])
{
   assert(s1 != NULL && s2 != NULL);
   /* ask if length command gives us the final place where \0 is*/
   size_t l = Str_getLength(s1);
   size_t i = 0;
   while(s2[i] != '\0'){
      s1[l + i] = s2[i];
      i++;
   }
   s1[l + i] = '\0';
   return &s1[0];
}

int Str_compare(const char s1[], const char* s2)
{
   /* do we assume they are the same size?*/
   assert(s1 != NULL && s2 != NULL);
   size_t i = 0;
   while(s1[i] != '\0')
   {
      int x = s1[i] - s2[i];
      if(x < 0) return -1;
      else if(x > 0) return 1;
      i++;
   }
   return 0;
}

/*check if haystack does not end in \0 before needle ends 
should i return address using &
*/
char* Str_search(const char haystack[], const char needle[])
{
   assert(haystack != NULL);
   int check = 0;
   size_t last_occurence = -1;
   size_t i = 0;
   while(haystack[i] != '\0'){

      if(check == 1){
         if(needle[i] == '\0') return &haystack[last_occurence];
         else if(needle[i+1] == '\0' && haystack[i+1] == '\0') return last_occurence;
         else if(needle[i] != haystack[i])check = 0;
      }
      else if(check == 0 && haystack[i] == needle[0]){
         check = 1;
         last_occurence = i;
      }
      i++;
   }
   return NULL;
}
