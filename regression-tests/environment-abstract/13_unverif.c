int r = 0 ;
int s = 0;

thread[N] thr1 {
  int l = 0;

  atomic { r++; }
  if (r == 1) {
    L3: s++;
    l++;
    assert(s == l);
    goto L3;
  }
}