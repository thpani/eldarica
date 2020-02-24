int len = _;
int next = 0;

thread[N] thr {
    assume(len > 0);
    int c = 0;
    int end = 0;

    atomic {
        if (next + 10 <= len) {
            c = next;
            end = next + 10;
            next = next + 10;
        }
    }
    while (c < end) {
        assert(0 <= c && c < len);
        c = c + 1;
    }
}
