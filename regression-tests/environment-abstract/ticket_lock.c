int T = 0;
int S = 0;

thread[N] main {
    atomic { T++; }
    assert(T > S);
    atomic { S++; }
}
