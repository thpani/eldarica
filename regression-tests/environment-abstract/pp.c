int X = 0;

thread[N] main {
  assert(0 <= X && X <= N);
  atomic { X++; }
  assert(1 <= X && X <= N+1);
}
