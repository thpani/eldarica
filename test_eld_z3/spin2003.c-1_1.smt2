(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main0_envLoop_main (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main1_envLoop_main (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main2_envLoop_main (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main8_envLoop_main (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main9_envLoop_main (Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (<= 0 (+ var0 (- 1))) (and (and (= 1 var2) (= 0 var4)) (= var0 var3))) (and (<= 0 (+ var1 (- 1))) (and (and (= 1 var2) (= 0 var4)) (= var1 var3))))) (inv_main1_envLoop_main var2 var4 var3 0 0 0 (+ var1 (- 1)) 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (inv_main2_envLoop_main var4 var5 var7 var0 var2 var3 var6 var1)) (inv_main8_envLoop_main 0 var5 var7 var0 var2 var3 var6 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (inv_main8_envLoop_main var1 var3 var6 var2 var0 var5 var7 var4)) (inv_main9_envLoop_main 1 var3 var6 var2 var0 var5 var7 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main1_envLoop_main var3 var4 var7 var5 var6 var2 var1 var0) (= var4 0))) (inv_main2_envLoop_main var3 1 var7 var5 var6 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main9_envLoop_main var2 var3 var7 var0 var6 var5 var1 var4) (= var3 1))) (inv_main0_envLoop_main var2 0 var7 var0 var6 var5 var1 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main1_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (<= 0 (+ var4 (- 1))))) (inv_main1_envLoop_main 0 var3 var6 (+ var2 1) (+ var4 (- 1)) var7 var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main8_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (<= 0 (+ var4 (- 1))))) (inv_main8_envLoop_main 0 var3 var6 (+ var2 1) (+ var4 (- 1)) var7 var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main2_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (<= 0 (+ var4 (- 1))))) (inv_main2_envLoop_main 0 var3 var6 (+ var2 1) (+ var4 (- 1)) var7 var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main9_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (<= 0 (+ var4 (- 1))))) (inv_main9_envLoop_main 0 var3 var6 (+ var2 1) (+ var4 (- 1)) var7 var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main0_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (<= 0 (+ var4 (- 1))))) (inv_main0_envLoop_main 0 var3 var6 (+ var2 1) (+ var4 (- 1)) var7 var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main1_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (<= 0 (+ var2 (- 1))))) (inv_main1_envLoop_main 1 var3 var6 (+ var2 (- 1)) var4 (+ var7 1) var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main8_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (<= 0 (+ var2 (- 1))))) (inv_main8_envLoop_main 1 var3 var6 (+ var2 (- 1)) var4 (+ var7 1) var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main2_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (<= 0 (+ var2 (- 1))))) (inv_main2_envLoop_main 1 var3 var6 (+ var2 (- 1)) var4 (+ var7 1) var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main9_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (<= 0 (+ var2 (- 1))))) (inv_main9_envLoop_main 1 var3 var6 (+ var2 (- 1)) var4 (+ var7 1) var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main0_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (<= 0 (+ var2 (- 1))))) (inv_main0_envLoop_main 1 var3 var6 (+ var2 (- 1)) var4 (+ var7 1) var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main1_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (and (= var3 0) (<= 0 (+ var5 (- 1)))))) (inv_main1_envLoop_main var1 1 var6 var2 (+ var4 1) var7 (+ var5 (- 1)) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main8_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (and (= var3 0) (<= 0 (+ var5 (- 1)))))) (inv_main8_envLoop_main var1 1 var6 var2 (+ var4 1) var7 (+ var5 (- 1)) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main2_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (and (= var3 0) (<= 0 (+ var5 (- 1)))))) (inv_main2_envLoop_main var1 1 var6 var2 (+ var4 1) var7 (+ var5 (- 1)) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main9_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (and (= var3 0) (<= 0 (+ var5 (- 1)))))) (inv_main9_envLoop_main var1 1 var6 var2 (+ var4 1) var7 (+ var5 (- 1)) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main0_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (and (= var3 0) (<= 0 (+ var5 (- 1)))))) (inv_main0_envLoop_main var1 1 var6 var2 (+ var4 1) var7 (+ var5 (- 1)) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main1_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (and (= var3 1) (<= 0 (+ var7 (- 1)))))) (inv_main1_envLoop_main var1 0 var6 var2 var4 (+ var7 (- 1)) var5 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main8_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (and (= var3 1) (<= 0 (+ var7 (- 1)))))) (inv_main8_envLoop_main var1 0 var6 var2 var4 (+ var7 (- 1)) var5 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main2_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (and (= var3 1) (<= 0 (+ var7 (- 1)))))) (inv_main2_envLoop_main var1 0 var6 var2 var4 (+ var7 (- 1)) var5 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main9_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (and (= var3 1) (<= 0 (+ var7 (- 1)))))) (inv_main9_envLoop_main var1 0 var6 var2 var4 (+ var7 (- 1)) var5 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main0_envLoop_main var1 var3 var6 var2 var4 var7 var5 var0) (and (= var3 1) (<= 0 (+ var7 (- 1)))))) (inv_main0_envLoop_main var1 0 var6 var2 var4 (+ var7 (- 1)) var5 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (not (and (inv_main9_envLoop_main var8 var10 var0 var2 var5 var1 var4 var7) (and (and (and (= var8 var3) (= var10 var6)) (= var0 var9)) (not (<= 0 (+ var3 (- 1)))))))))
(check-sat)
