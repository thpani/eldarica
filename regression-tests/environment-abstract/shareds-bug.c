int count=0;
int wait=0;
int sval1=0;
int sval2=0;

thread[N] thrA {
    int lval1;
    atomic {sval1++;}
    atomic {lval1++;}
    atomic {wait++;}
}


thread[M] thrB {
    int lval2;
    atomic {sval2++;}
    atomic {lval2++;}
    atomic {wait++;}
    assert(sval1 > 0);
}
