%{
#include<stdio.h>
%}
%%
^[0-9]*[02468] {printf("Even");}
.* {printf("odd");}
\n {return 0;}
%%
void main()
{
printf("Enter the digit");
yylex();
}
int yywrap()
{
return 1;
}
