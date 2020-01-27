int pendingIo = 1;
int stoppingFlag = 0;
int stoppingEvent = 0;
int stopped = 0;

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

thread[N] add {
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
