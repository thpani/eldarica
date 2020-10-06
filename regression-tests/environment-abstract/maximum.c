/*
 * Zeinab Ganjei, Ahmed Rezine, Petru Eles, Zebo Peng: Abstracting and Counting
 * Synchronizing Processes. VMCAI 2015: 227-244
 *
 * https://gitlab.ida.liu.se/apv/pacman/-/tree/master/examples
 */

int max;
int arbitrary;
int waiting = 0;

thread[N] thr {
    int val;
    arbitrary = val;
    atomic {
        if (max < val) {
            max = val;
        }
    }
    atomic { waiting++; }
    assume(waiting == N);

    assert(arbitrary <= max);
}
