int nondet();

int pendingIo = 1;
int stoppingFlag = 0;
int stoppingEvent = 0;
int stopped = 0;

int N = _;

int BCSP_IoIncrement(void) {
	atomic { // BCSP_IoIncrement
	  // don't enter if stopping
	  if (stoppingFlag) return 0;
    pendingIo++;
    return 1;
  }
}

void BCSP_IoDecrement(void) {
  atomic {  // BCSP_IoDecrement
    pendingIo--;
    if (pendingIo == 0) stoppingEvent = 1;
  }
}

thread sum {
  int n1 = N-1;
  int n2 = 0;
  int n3 = 0;
  while(1) {
    if(nondet()) {
      atomic {
        assume(n1 > 0);
        assume(!stoppingFlag);
        pendingIo++;
        n1--; n2++;
      }
    } else if (nondet()) {
      atomic {
        assume(n1 > 0);
        assume(stoppingFlag);
        n1--; n3++;
      }
    } else {
      atomic {
        assume(n2 > 0);
        BCSP_IoDecrement();
        n2--; n3++;
      }
    }
  }
}

thread add {
  assume(N>0);
  if(BCSP_IoIncrement()) {
    assert(!stopped);
    // do work
    BCSP_IoDecrement();
  }
}

thread stop {
	atomic { stoppingFlag = 1; }
  BCSP_IoDecrement();
  assume(stoppingEvent);
  // release allocated resources
  atomic { stopped = 1; }
}
