int T = 0;
int S = 0;

thread[N] main {
    atomic { T++; }
    assert(0 < T - S && T - S <= N+1);
    atomic { S++; }
}
