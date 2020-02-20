int X = 0;
int N = _;
int M = _;

int nondet();

thread inc {
  assume(N > 0 && M > 0);
  assert(-M-1 <= X && X <= N);
  atomic { X++; }
  assert(-M <= X && X <= N+1);
}

thread dec {
  assume(N > 0 && M > 0);
  assert(-M <= X && X <= N+1);
  atomic { X--; }
  assert(-M-1 <= X && X <= N);
}

thread inc_summary {
  int n1 = N;
  int n2 = 0;
  while (1) {
    atomic {
      assume(n1 > 0);
      X++;
      n1--;
      n2++;
    }
  }
}

thread dec_summary {
  int n1 = M;
  int n2 = 0;
  while (1) {
    atomic {
      assume(n1 > 0);
      X--;
      n1--;
      n2++;
    }
  }
}
