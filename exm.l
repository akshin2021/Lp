%{
#include <stdio.h>
#include <stdlib.h>
int count1=0;
int count2=0;
int count3=0;
%}

%%
"waaa"a+"w" {count1++;}
"w"(0|1)* {count2++;}
"00"(0|1)*"11" {count3++;}
. ;
%%
int yywrap(){return 1;}

int main(){
	yyin = fopen("input.txt", "r");
	yylex();
	printf("The number of occurences of string 1: %d\n",count1);
	printf("The number of occurences of string 2: %d\n",count2);
	printf("The number of occurences of string 3: %d\n",count3);
	fclose(yyin);
	return 0;
}
