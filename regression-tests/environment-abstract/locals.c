/*
 * Zeinab Ganjei, Ahmed Rezine, Petru Eles, Zebo Peng: Abstracting and Counting
 * Synchronizing Processes. VMCAI 2015: 227-244
 *
 * https://gitlab.ida.liu.se/apv/pacman/-/tree/master/examples
 */

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
