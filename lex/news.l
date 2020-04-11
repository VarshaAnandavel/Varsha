political party|congress|bjp|dmk|admk|political|policy|republic|election|elected|cm|public|voting|congress
sports cricket|trophy|football|hockey|won|match|team|sports|olympic
crime killed|murdered|beaten|jail|arrested|lockedup|prison|rape|killing
robbery robbed|stolen|missing|steal|stealing|theft|snatched|loot|police|robbery
medicine virus|hospital|tablets|medical|medicine|WHO
%{
#include<stdio.h>
#include<stdlib.h>
int pcount=0,scount=0,ccount=0,mcount=0,rcount=0;
%}
dig [0-9]+|([0-9]*)"."([0-9]+)
%%
.*{political}.*"." {pcount++;printf("%s -- political news",yytext);}
.*{sports}.*"." {scount++;printf("%s -- sports news",yytext);}
.*{crime}.*"." {ccount++;printf("%s -- crime news",yytext);}
.*{robbery}.*"." {rcount++;printf("%s -- news related to robbery",yytext);}
.*{medicine}.*"." {mcount++;printf("%s -- medical news",yytext);}
%%
int yywrap(){
return 1;
}
int main(){
 yyin = fopen("Input.txt", "r"); 
yylex();
printf("\n \nThe number of news in POLITICS category %d \n",pcount);
printf("The number of news in SPORTS category %d \n",scount);
printf("The number of news in CRIME category %d \n",ccount);
printf("The number of news in ROBBERY category %d \n",rcount);
printf("The number of news in MEDICINE category %d \n",mcount);
}

