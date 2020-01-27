int X = 0;
int N = _;

thread main {
  assume(N > 0);
  assert(0 <= X && X <= N);
  atomic { X++; }
  assert(1 <= X && X <= N+1);
}

thread summary {
  int n1 = N;
  int n2 = 0;
  while (n1 > 0) {
    atomic {
      X++;
      n1--;
      n2++;
    }
  }
}
