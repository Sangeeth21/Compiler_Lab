%{
#include<stdio.h>
%}
%token A B NL
%%
P: S NL {printf("The String is valid");
        return 0;
        }
S: A S B | A B ;
%%
int main()
{
printf("Enter the string");
yyparse();
}
int yyerror(char *S)
{
printf("The string is invalid");
}
