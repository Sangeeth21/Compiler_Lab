%{
   #include<stdio.h>
  int flag = 0;
%}
  
%%
  
[aeiouAEIOU].[a-zA-Z0-9.]+ {printf("Valid String");};
[a-zA-Z0-9]+
  
%%
  
 int main()
{
   printf("Enter the string starting with vowel");

  yylex();
 if (flag == 1) 
    printf("Accepted"); 
 else
    printf("Not Accepted"); 
}