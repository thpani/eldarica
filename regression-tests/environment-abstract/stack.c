int top = 0;

thread[N] push {
  assert(0 <= top && top < N);
  atomic { top++; }
  assert(0 <= top && top <= N);
}

thread[M] pop {
  assert(0 <= top && top <= N);
  atomic { if (top > 0) { top--; } }
  assert(0 <= top && top <= N);
}
