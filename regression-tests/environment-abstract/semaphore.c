/*
 * Zeinab Ganjei, Ahmed Rezine, Petru Eles, Zebo Peng: Abstracting and Counting
 * Synchronizing Processes. VMCAI 2015: 227-244
 *
 * https://gitlab.ida.liu.se/apv/pacman/-/tree/master/examples
 */

int waiting=0;
int open=0;

thread[capacity] thr {
    atomic { waiting++; }
    atomic { assume(waiting == capacity); open++; }
    assert(open != 0);
    assert(!(open >= 1) || waiting == capacity);
    atomic { assume(open >= 1); open--; }
}
