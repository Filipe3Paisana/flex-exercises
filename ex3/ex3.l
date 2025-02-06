%{
#include <stdio.h>
int char_count = 0;
int word_count = 0;
%}

%%
.       { char_count++; }
[a-zA-Z]+   { word_count++; }
\n      { /* Ignorar quebras de linha */ }
%%

int main() {
    yylex();
    printf("Total de caracteres: %d\n", char_count);
    printf("Total de palavras: %d\n", word_count);
    return 0;
}

int yywrap() {
    return 1;
}
