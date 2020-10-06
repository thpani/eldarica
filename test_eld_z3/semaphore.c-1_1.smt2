(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_thr0_envLoop_thr (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_thr1_envLoop_thr (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_thr2_envLoop_thr (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_thr4_envLoop_thr (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_thr7_envLoop_thr (Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (<= 0 (+ var3 (- 1))) (and (and (= 0 var4) (= 0 var2)) (= var3 var0))) (and (<= 0 (+ var1 (- 1))) (and (and (= 0 var4) (= 0 var2)) (= var1 var0))))) (inv_thr1_envLoop_thr var4 var2 var0 0 (+ var1 (- 1)) 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (inv_thr1_envLoop_thr var6 var4 var5 var0 var7 var1 var2 var3)) (inv_thr2_envLoop_thr (+ var6 1) var4 var5 var0 var7 var1 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr2_envLoop_thr var7 var5 var6 var2 var0 var4 var3 var1) (= var7 var6))) (inv_thr4_envLoop_thr var7 (+ var5 1) var6 var2 var0 var4 var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (inv_thr4_envLoop_thr var5 var3 var4 var2 var0 var1 var6 var7)) (inv_thr7_envLoop_thr var5 var3 var4 var2 var0 var1 var6 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr7_envLoop_thr var7 var5 var6 var4 var0 var3 var2 var1) (<= 0 (+ var5 (- 1))))) (inv_thr0_envLoop_thr var7 (+ var5 (- 1)) var6 var4 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr1_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (<= 0 (+ var3 (- 1))))) (inv_thr1_envLoop_thr (+ var6 1) var4 var5 (+ var1 1) (+ var3 (- 1)) var7 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr2_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (<= 0 (+ var3 (- 1))))) (inv_thr2_envLoop_thr (+ var6 1) var4 var5 (+ var1 1) (+ var3 (- 1)) var7 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr4_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (<= 0 (+ var3 (- 1))))) (inv_thr4_envLoop_thr (+ var6 1) var4 var5 (+ var1 1) (+ var3 (- 1)) var7 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr7_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (<= 0 (+ var3 (- 1))))) (inv_thr7_envLoop_thr (+ var6 1) var4 var5 (+ var1 1) (+ var3 (- 1)) var7 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr0_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (<= 0 (+ var3 (- 1))))) (inv_thr0_envLoop_thr (+ var6 1) var4 var5 (+ var1 1) (+ var3 (- 1)) var7 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr1_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (and (= var6 var5) (<= 0 (+ var1 (- 1)))))) (inv_thr1_envLoop_thr var6 (+ var4 1) var5 (+ var1 (- 1)) var3 (+ var7 1) var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr2_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (and (= var6 var5) (<= 0 (+ var1 (- 1)))))) (inv_thr2_envLoop_thr var6 (+ var4 1) var5 (+ var1 (- 1)) var3 (+ var7 1) var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr4_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (and (= var6 var5) (<= 0 (+ var1 (- 1)))))) (inv_thr4_envLoop_thr var6 (+ var4 1) var5 (+ var1 (- 1)) var3 (+ var7 1) var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr7_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (and (= var6 var5) (<= 0 (+ var1 (- 1)))))) (inv_thr7_envLoop_thr var6 (+ var4 1) var5 (+ var1 (- 1)) var3 (+ var7 1) var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr0_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (and (= var6 var5) (<= 0 (+ var1 (- 1)))))) (inv_thr0_envLoop_thr var6 (+ var4 1) var5 (+ var1 (- 1)) var3 (+ var7 1) var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr1_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (<= 0 (+ var7 (- 1))))) (inv_thr1_envLoop_thr var6 var4 var5 var1 var3 (+ var7 (- 1)) (+ var2 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr2_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (<= 0 (+ var7 (- 1))))) (inv_thr2_envLoop_thr var6 var4 var5 var1 var3 (+ var7 (- 1)) (+ var2 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr4_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (<= 0 (+ var7 (- 1))))) (inv_thr4_envLoop_thr var6 var4 var5 var1 var3 (+ var7 (- 1)) (+ var2 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr7_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (<= 0 (+ var7 (- 1))))) (inv_thr7_envLoop_thr var6 var4 var5 var1 var3 (+ var7 (- 1)) (+ var2 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr0_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (<= 0 (+ var7 (- 1))))) (inv_thr0_envLoop_thr var6 var4 var5 var1 var3 (+ var7 (- 1)) (+ var2 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr1_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (and (<= 0 (+ var4 (- 1))) (<= 0 (+ var2 (- 1)))))) (inv_thr1_envLoop_thr var6 (+ var4 (- 1)) var5 var1 var3 var7 (+ var2 (- 1)) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr2_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (and (<= 0 (+ var4 (- 1))) (<= 0 (+ var2 (- 1)))))) (inv_thr2_envLoop_thr var6 (+ var4 (- 1)) var5 var1 var3 var7 (+ var2 (- 1)) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr4_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (and (<= 0 (+ var4 (- 1))) (<= 0 (+ var2 (- 1)))))) (inv_thr4_envLoop_thr var6 (+ var4 (- 1)) var5 var1 var3 var7 (+ var2 (- 1)) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr7_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (and (<= 0 (+ var4 (- 1))) (<= 0 (+ var2 (- 1)))))) (inv_thr7_envLoop_thr var6 (+ var4 (- 1)) var5 var1 var3 var7 (+ var2 (- 1)) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_thr0_envLoop_thr var6 var4 var5 var1 var3 var7 var2 var0) (and (<= 0 (+ var4 (- 1))) (<= 0 (+ var2 (- 1)))))) (inv_thr0_envLoop_thr var6 (+ var4 (- 1)) var5 var1 var3 var7 (+ var2 (- 1)) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (not (and (inv_thr4_envLoop_thr var1 var9 var4 var0 var2 var5 var3 var10) (and (and (and (= var1 var8) (= var9 var6)) (= var4 var7)) (= var6 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (not (and (inv_thr7_envLoop_thr var2 var5 var0 var1 var4 var10 var6 var3) (and (and (and (= var2 var9) (= var5 var7)) (= var0 var8)) (and (<= 0 (+ var7 (- 1))) (not (= var9 var8))))))))
(check-sat)
