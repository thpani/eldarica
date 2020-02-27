int wait1=0;
int wait2=0;

thread[count1] thrA {
    atomic { wait1++; }
    assume(wait1 == count1+count2);
    atomic { wait2++; }
    assume(wait2 == count1+count2);
}

thread[count2] thrB {
    assert(wait1 != count1+count2);
    atomic { wait1++; }
    assume(wait1 == count1+count2);
    atomic { wait2++; }
    assume(wait2 == count1+count2);
}
