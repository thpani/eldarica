int wait=0;
int sval;

thread[N] thrA {
    int lval1;
    lval1 = sval;
    lval1++;
    atomic { wait++; }
}

thread[M] thrB {
    int lval2;
    lval2 = sval;
    lval2++;
    atomic { wait++; }
    assume(N+M==wait);
    assert(N+M==wait);
}
