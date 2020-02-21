int X = 0;

thread[N] inc {
  assert(-M <= X && X < N);
  atomic { X++; }
  assert(-M < X && X <= N);
}

thread[M] dec {
  assert(-M < X && X <= N);
  atomic { X--; }
  assert(-M <= X && X < N);
}
