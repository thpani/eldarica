int s = 0;
int t = 0;

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

