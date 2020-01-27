int X = 0;
int N = _;

int nondet();

thread main {
  assume(N > 0);
  assert(0 <= X && X < N);
  atomic { X++; }
  assert(0 <= X && X <= N);
  atomic { X--; }
  assert(0 <= X && X < N);
}

thread summary {
  int n1 = N-1;
  int n2 = 0;
  int n3 = 0;
  while (1) {
    if(nondet()) {
      atomic {
        assume(n1 > 0);
        X++;
        n1--;
        n2++;
      }
    } else 
      atomic {
        assume(n2 > 0);
        X--;
        n2--;
        n3++;
      }
  }
}
