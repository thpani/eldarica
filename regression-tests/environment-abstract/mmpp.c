int X = 0;

thread[N] main {
  assert(-N < X && X <= 0);
  atomic { X--; }
  assert(-N <= X && X < 0);
  atomic { X++; }
  assert(-N < X && X <= 0);
}
