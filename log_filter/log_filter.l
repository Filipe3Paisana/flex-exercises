%{
#include <stdio.h>
%}

%%
192\.168\.1\.100.*  { printf("ACESSO ENCONTRADO: %s\n", yytext); }
.|\n                ;  // Ignora todas as outras linhas
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
