
%option noyywrap

%{
#include <stdio.h>
#include <stdlib.h>
%}  

DIGITO  [0-9]

%%

{DIGITO}   { printf("Valor foi %d\n", atoi(yytext)); }

%%

int main() {
    yylex();
    return 0;
}
