%{
#include "y.tab.h"
%}
%%
[aA] {return A;}
[bB] {return B;}
[\t]  ;
[\n] {return NL;}
%%
int yywrap()
{
return 1;
}
