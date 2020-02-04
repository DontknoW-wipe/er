%{
#include<stdio.h>
int vowel=0;
int cons=0;
%}
%%
"a"|"e"|"i"|"o"|"u"|"A"|"E"|"I"|"O"|"U" {vowel++;}
[a-zA-Z] {cons++;}
%%
int yywrap()
{
return 1;
}
int main()
{
extern FILE *yyin,*yyout;
yyin=fopen("i.txt","r");
yyout=fopen("o.txt","w");
yylex();
fprintf(yyout,"vowel= %d and Consonent= %d",vowel,cons);
}
