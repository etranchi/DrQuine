#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
static char sym[] = "\n\t\\\"";int main(){
int i = 4;
if(i==0)return(0);char tmp[2];char tmp_to_put[2];char ident[10]="%d";char ref[10] = "Sully_";char end[10] = ".c";char gcc[10]="gcc ";char o[5] = " -o ";if (access("./Sully_5.c", F_OK) == 0) i--;sprintf(tmp, "%d", i);sprintf(tmp_to_put, "%d", i);char n_file[100];strcpy(n_file, ref);strcat(n_file, tmp);char file_name[100];strcpy(file_name, n_file);strcat(file_name, end);FILE*f=fopen(file_name, "w");char*replicate="#include<stdio.h>%c#include<stdlib.h>%c#include<string.h>%c#include<unistd.h>%cstatic char sym[] = %c%cn%ct%c%c%c%c%c;int main(){%cint i = %d;%cif(i==0)return(0);char tmp[2];char tmp_to_put[2];char ident[10]=%c%s%c;char ref[10] = %cSully_%c;char end[10] = %c.c%c;char gcc[10]=%cgcc %c;char o[5] = %c -o %c;if (access(%c./Sully_5.c%c, F_OK) == 0) i--;sprintf(tmp, %c%s%c, i);sprintf(tmp_to_put, %c%s%c, i);char n_file[100];strcpy(n_file, ref);strcat(n_file, tmp);char file_name[100];strcpy(file_name, n_file);strcat(file_name, end);FILE*f=fopen(file_name, %cw%c);char*replicate=%c%s%c;fprintf(f,replicate,sym[0],sym[0],sym[0],sym[0],sym[3],sym[2],sym[2],sym[2],sym[2],sym[2],sym[3],sym[3],sym[0],i,sym[0],sym[3],ident,sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],ident,sym[3],sym[3],ident, sym[3],sym[3],sym[3],sym[3],replicate,sym[3],sym[3],sym[3]);fclose(f);char cmd[100];strcpy(cmd, gcc);strcat(cmd, file_name);strcat(cmd, o);strcat(cmd, n_file);system(cmd);char exec_f[100];strcpy(exec_f, %c./%c);strcat(exec_f, n_file);execl(exec_f, n_file, NULL);return(0);}";fprintf(f,replicate,sym[0],sym[0],sym[0],sym[0],sym[3],sym[2],sym[2],sym[2],sym[2],sym[2],sym[3],sym[3],sym[0],i,sym[0],sym[3],ident,sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],sym[3],ident,sym[3],sym[3],ident, sym[3],sym[3],sym[3],sym[3],replicate,sym[3],sym[3],sym[3]);fclose(f);char cmd[100];strcpy(cmd, gcc);strcat(cmd, file_name);strcat(cmd, o);strcat(cmd, n_file);system(cmd);char exec_f[100];strcpy(exec_f, "./");strcat(exec_f, n_file);execl(exec_f, n_file, NULL);return(0);}