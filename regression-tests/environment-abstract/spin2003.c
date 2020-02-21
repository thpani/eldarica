int x=1;
int m=0;

void acquire() {
    atomic { assume(m==0); m = 1; }
}

void release() {
	atomic { assume(m==1); m = 0; }
}

thread[N] main {
  acquire();
  x = 0;
  x = 1;
  assert(x>=1);
  release();
}