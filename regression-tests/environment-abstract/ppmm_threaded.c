int X = 0;

thread[N] inc {
  assert(-M-1 <= X && X <= N);
  atomic { X++; }
  assert(-M <= X && X <= N+1);
}

thread[M] dec {
  assert(-M <= X && X <= N+1);
  atomic { X--; }
  assert(-M-1 <= X && X <= N);
}
