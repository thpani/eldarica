/*
 * Azadeh Farzan, Zachary Kincaid, Andreas Podelski: Proofs that count. POPL
 * 2014: 151-164
 *
 * https://github.com/sosy-lab/sv-benchmarks/blob/master/c/pthread-lit/fkp2014.c
 */

int s = 0; int t = 0;

void inct() {
    atomic { t++; }
}

void incs() {
    atomic { s++; }
}

thread[N] thr1 {
    inct();
    assert(0 < t - s && t - s <= N);
    incs();
}

