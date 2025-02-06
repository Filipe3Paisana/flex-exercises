%{
#include <stdio.h>
%}

%%
[0-9]+      { printf("Número: %s\n", yytext); }
[a-zA-Z]+   { printf("Palavra: %s\n", yytext); }
.           { /* Ignora outros caracteres */ }
%%

int main() {
    yylex();  // Executa a análise léxica
    return 0;
}

int yywrap() {
    return 1;
}
