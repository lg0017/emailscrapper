/* Data da submissao: 23/03/2020
* Nome: Luiz Guilherme Silva Moreira
* RA: 202391
*/
%{
#include <stdio.h>
%}


%%
([a-zA-Z0-9]+[-._])*[a-zA-Z0-9]+@([a-zA-Z0-9]+[-._])*[a-zA-Z0-9]+ {
printf("%s\n", yytext);
}

([a-zA-Z0-9]+[-._])*[a-zA-Z0-9]+@([a-zA-Z0-9]+[-._])*[a-zA-Z0-9]+[-_]+ ;

[\n] ;
. ;

%%

int main() {
  yylex();
  return 0;
}
