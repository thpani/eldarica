(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main1_envLoop_main (Int Int Int Int Int) Bool)
(declare-fun inv_main3_envLoop_main (Int Int Int Int Int) Bool)
(declare-fun inv_main6_envLoop_main (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (<= 0 (+ var1 (- 1))) (and (= 0 var0) (= var1 var2))) (and (<= 0 (+ var3 (- 1))) (and (= 0 var0) (= var3 var2))))) (inv_main1_envLoop_main var0 var2 0 (+ var3 (- 1)) 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main1_envLoop_main var4 var2 var3 var1 var0)) (inv_main3_envLoop_main (+ var4 (- 1)) var2 var3 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main3_envLoop_main var4 var1 var2 var3 var0)) (inv_main6_envLoop_main (+ var4 1) var1 var2 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main1_envLoop_main var4 var2 var1 var3 var0) (<= 0 (+ var3 (- 1))))) (inv_main1_envLoop_main (+ var4 (- 1)) var2 (+ var1 1) (+ var3 (- 1)) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main3_envLoop_main var4 var2 var1 var3 var0) (<= 0 (+ var3 (- 1))))) (inv_main3_envLoop_main (+ var4 (- 1)) var2 (+ var1 1) (+ var3 (- 1)) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main6_envLoop_main var4 var2 var1 var3 var0) (<= 0 (+ var3 (- 1))))) (inv_main6_envLoop_main (+ var4 (- 1)) var2 (+ var1 1) (+ var3 (- 1)) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main1_envLoop_main var4 var2 var1 var3 var0) (<= 0 (+ var1 (- 1))))) (inv_main1_envLoop_main (+ var4 1) var2 (+ var1 (- 1)) var3 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main3_envLoop_main var4 var2 var1 var3 var0) (<= 0 (+ var1 (- 1))))) (inv_main3_envLoop_main (+ var4 1) var2 (+ var1 (- 1)) var3 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main6_envLoop_main var4 var2 var1 var3 var0) (<= 0 (+ var1 (- 1))))) (inv_main6_envLoop_main (+ var4 1) var2 (+ var1 (- 1)) var3 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main1_envLoop_main var0 var2 var3 var6 var4) (and (and (= var0 var5) (= var2 var1)) (or (not (<= 0 (+ (+ var5 (* 1 var1)) (- 1)))) (not (<= 0 (* (- 1) var5)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main3_envLoop_main var6 var0 var5 var2 var3) (and (and (= var6 var4) (= var0 var1)) (or (not (<= 0 (+ var4 (* 1 var1)))) (not (<= 0 (+ (* (- 1) var4) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main6_envLoop_main var5 var1 var3 var0 var2) (and (and (= var5 var6) (= var1 var4)) (or (not (<= 0 (+ (+ var6 (* 1 var4)) (- 1)))) (not (<= 0 (* (- 1) var6)))))))))
(check-sat)
