%{
#include <stdio.h>
%}

%%
[0-9]+      { printf("Número: %s\n", yytext); }
"+"         { printf("Operador: +\n"); }
"-"         { printf("Operador: -\n"); }
"*"         { printf("Operador: *\n"); }
"/"         { printf("Operador: /\n"); }
[a-zA-Z]+   { printf("Palavra: %s\n", yytext); }
.           { /* Ignorar outros caracteres */ }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
