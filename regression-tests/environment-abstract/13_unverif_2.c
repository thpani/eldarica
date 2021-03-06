/*
 * Modified from
 *
 * Alastair F. Donaldson, Alexander Kaiser, Daniel Kroening, Thomas Wahl:
 * Symmetry-Aware Predicate Abstraction for Shared-Variable Concurrent
 * Programs. CAV 2011: 356-371
 *
 * to include an interval assertion on `r'.
 *
 * https://github.com/sosy-lab/sv-benchmarks/blob/master/c/pthread-ext/13_unverif.c
 */

int r = 0 ;
int s = 0;

thread[N] thr1 {
  int l = 0;

  atomic { r++; }
  if (r == 1) {
    L3: s++;
    l++;
    assert(0 < r && r <= N && s == l);
    goto L3;
  }
}
