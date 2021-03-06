/*
 * Zeinab Ganjei, Ahmed Rezine, Petru Eles, Zebo Peng: Abstracting and Counting
 * Synchronizing Processes. VMCAI 2015: 227-244
 *
 * https://gitlab.ida.liu.se/apv/pacman/-/tree/master/examples
 */

int waiting = 0;
int read = 0;

thread[N] thr {
    read = 1;
    read = 0;
    atomic { waiting++; }
    assume(waiting == N);
    assert(!read);
}
