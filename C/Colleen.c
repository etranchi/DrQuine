#include<stdio.h>
char tab=9;
char parent=34;
char ret=10;
char slash=92;
char*not_jump="\\n";
char space=32;
char*com1="\n/*\n";
char*com2="\n*/\n";
/*
	commentaire
*/
int main(){char*a="#include<stdio.h>%cchar%ctab=9;%cchar%cparent=34;%cchar%cret=10;%cchar%cslash=92;%cchar*not_jump=%c%c%s%c;%cchar%cspace=32;%cchar*com1=%c%s/*%s%c;%cchar*com2=%c%s*/%s%c;%s%ccommentaire%sint main(){char*a=%c%s%c;printf(a, ret, space, ret, space, ret, space ,ret, space, ret, parent, slash, not_jump, parent, ret, space, ret, parent, not_jump, not_jump, parent, ret, parent, not_jump, not_jump, parent, com1, tab, com2, parent, a, parent, ret);return(0);};%c";printf(a, ret, space, ret, space, ret, space ,ret, space, ret, parent, slash, not_jump, parent, ret, space, ret, parent, not_jump, not_jump, parent, ret, parent, not_jump, not_jump, parent, com1, tab, com2, parent, a, parent, ret);return(0);};
