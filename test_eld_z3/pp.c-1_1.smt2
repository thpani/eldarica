(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main1_envLoop_main (Int Int Int Int) Bool)
(declare-fun inv_main3_envLoop_main (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (<= 0 (+ var3 (- 1))) (and (= 0 var0) (= var3 var1))) (and (<= 0 (+ var2 (- 1))) (and (= 0 var0) (= var2 var1))))) (inv_main1_envLoop_main var0 var1 0 (+ var2 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (inv_main1_envLoop_main var1 var3 var0 var2)) (inv_main3_envLoop_main (+ var1 1) var3 var0 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main1_envLoop_main var1 var3 var2 var0) (<= 0 (+ var0 (- 1))))) (inv_main1_envLoop_main (+ var1 1) var3 (+ var2 1) (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main3_envLoop_main var1 var3 var2 var0) (<= 0 (+ var0 (- 1))))) (inv_main3_envLoop_main (+ var1 1) var3 (+ var2 1) (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main1_envLoop_main var3 var1 var2 var0) (and (and (= var3 var4) (= var1 var5)) (or (not (<= 0 var4)) (not (<= 0 (+ (+ var5 (* (- 1) var4)) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main3_envLoop_main var2 var4 var1 var0) (and (and (= var2 var3) (= var4 var5)) (or (not (<= 0 (+ var3 (- 1)))) (not (<= 0 (+ var5 (* (- 1) var3))))))))))
(check-sat)
