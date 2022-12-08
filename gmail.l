%{
#include<stdio.h>
%}
%%
^[_a-z][_a-z0-9]*[@]("gmail.com"|"yahoo.in") {printf("Valid email");}
.* {printf("Invalid email");}
\n {return 0;}
%%
void main()
{
printf("Enter the email");
yylex();
}
int yywrap()
{
return 1;
}
