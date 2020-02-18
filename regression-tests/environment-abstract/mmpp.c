int X = 0;

thread[N] main {
  assert(-N <= X && X <= 0);
  atomic { X--; }
  assert(-N-1 <= X && X < 0);
  atomic { X++; }
  assert(-N <= X && X <= 0);
}
