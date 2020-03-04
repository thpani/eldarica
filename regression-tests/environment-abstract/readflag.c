int waiting = 0;
int read = 0;

thread[N] thr {
    read = 1;
    read = 0;
    atomic { waiting++; }
    assume(waiting == N);
    assert(!read);
}
