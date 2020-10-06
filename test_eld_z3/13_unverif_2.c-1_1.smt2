(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_thr10_envLoop_thr (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_thr110_envLoop_thr (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_thr12_envLoop_thr (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_thr13_envLoop_thr (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_thr15_envLoop_thr (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_thr19_envLoop_thr (Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (<= 0 (+ var0 (- 1))) (and (and (= 0 var2) (= 0 var3)) (= var0 var4))) (and (<= 0 (+ var1 (- 1))) (and (and (= 0 var2) (= 0 var3)) (= var1 var4))))) (inv_thr12_envLoop_thr var2 var3 var4 0 0 (+ var1 (- 1)) 0 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (inv_thr12_envLoop_thr var4 var2 var7 var0 var5 var9 var6 var1 var3 var8)) (inv_thr13_envLoop_thr (+ var4 1) var2 var7 var0 var5 var9 var6 var1 var3 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (inv_thr15_envLoop_thr var5 var3 var8 var0 var7 var2 var9 var6 var1 var4)) (inv_thr19_envLoop_thr var5 var3 var8 var0 var3 var7 var2 var9 var6 var1 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr13_envLoop_thr var4 var1 var7 var0 var3 var5 var9 var6 var2 var8) (= var4 1))) (inv_thr15_envLoop_thr var4 var1 var7 var0 var3 var5 var9 var6 var2 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr13_envLoop_thr var4 var1 var6 var0 var5 var7 var8 var3 var9 var2) (not (= var4 1)))) (inv_thr10_envLoop_thr var4 var1 var6 var5 var7 var8 var3 var9 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (inv_thr19_envLoop_thr var3 var1 var7 var0 var2 var10 var9 var6 var5 var8 var4)) (inv_thr110_envLoop_thr var3 (+ var2 1) var7 (+ var0 1) var10 var9 var6 var5 var8 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (inv_thr110_envLoop_thr var3 var2 var7 var0 var9 var1 var6 var5 var8 var4)) (inv_thr15_envLoop_thr var3 var2 var7 var0 var9 var1 var6 var5 var8 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr12_envLoop_thr var4 var1 var6 var7 var8 var5 var2 var0 var9 var3) (<= 0 (+ var5 (- 1))))) (inv_thr12_envLoop_thr (+ var4 1) var1 var6 var7 (+ var8 1) (+ var5 (- 1)) var2 var0 var9 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr13_envLoop_thr var4 var1 var6 var8 var7 var5 var2 var0 var9 var3) (<= 0 (+ var5 (- 1))))) (inv_thr13_envLoop_thr (+ var4 1) var1 var6 var8 (+ var7 1) (+ var5 (- 1)) var2 var0 var9 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_thr19_envLoop_thr var4 var1 var8 var7 var5 var9 var6 var2 var0 var10 var3) (<= 0 (+ var6 (- 1))))) (inv_thr19_envLoop_thr (+ var4 1) var1 var8 var7 var5 (+ var9 1) (+ var6 (- 1)) var2 var0 var10 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr15_envLoop_thr var5 var1 var7 var4 var8 var6 var2 var0 var9 var3) (<= 0 (+ var6 (- 1))))) (inv_thr15_envLoop_thr (+ var5 1) var1 var7 var4 (+ var8 1) (+ var6 (- 1)) var2 var0 var9 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_thr10_envLoop_thr var4 var1 var6 var7 var5 var2 var0 var8 var3) (<= 0 (+ var5 (- 1))))) (inv_thr10_envLoop_thr (+ var4 1) var1 var6 (+ var7 1) (+ var5 (- 1)) var2 var0 var8 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr110_envLoop_thr var5 var2 var7 var1 var8 var6 var3 var0 var9 var4) (<= 0 (+ var6 (- 1))))) (inv_thr110_envLoop_thr (+ var5 1) var2 var7 var1 (+ var8 1) (+ var6 (- 1)) var3 var0 var9 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr12_envLoop_thr var4 var1 var6 var9 var7 var5 var2 var0 var8 var3) (<= 0 (+ var0 (- 1))))) (inv_thr12_envLoop_thr var4 var1 var6 var9 var7 var5 (+ var2 1) (+ var0 (- 1)) var8 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr13_envLoop_thr var5 var1 var7 var4 var8 var6 var2 var0 var9 var3) (<= 0 (+ var0 (- 1))))) (inv_thr13_envLoop_thr var5 var1 var7 var4 var8 var6 (+ var2 1) (+ var0 (- 1)) var9 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_thr19_envLoop_thr var5 var1 var7 var0 var3 var8 var6 var2 var10 var9 var4) (<= 0 (+ var10 (- 1))))) (inv_thr19_envLoop_thr var5 var1 var7 var0 var3 var8 var6 (+ var2 1) (+ var10 (- 1)) var9 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr15_envLoop_thr var4 var1 var6 var9 var7 var5 var2 var0 var8 var3) (<= 0 (+ var0 (- 1))))) (inv_thr15_envLoop_thr var4 var1 var6 var9 var7 var5 (+ var2 1) (+ var0 (- 1)) var8 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_thr10_envLoop_thr var4 var1 var6 var7 var5 var2 var0 var8 var3) (<= 0 (+ var0 (- 1))))) (inv_thr10_envLoop_thr var4 var1 var6 var7 var5 (+ var2 1) (+ var0 (- 1)) var8 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr110_envLoop_thr var4 var1 var6 var7 var8 var5 var2 var0 var9 var3) (<= 0 (+ var0 (- 1))))) (inv_thr110_envLoop_thr var4 var1 var6 var7 var8 var5 (+ var2 1) (+ var0 (- 1)) var9 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr12_envLoop_thr var4 var1 var6 var8 var7 var5 var2 var0 var9 var3) (and (= var4 1) (<= 0 (+ var7 (- 1)))))) (inv_thr12_envLoop_thr var4 var1 var6 var8 (+ var7 (- 1)) var5 var2 (+ var0 1) var9 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr13_envLoop_thr var4 var1 var6 var7 var8 var5 var2 var0 var9 var3) (and (= var4 1) (<= 0 (+ var8 (- 1)))))) (inv_thr13_envLoop_thr var4 var1 var6 var7 (+ var8 (- 1)) var5 var2 (+ var0 1) var9 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_thr19_envLoop_thr var4 var1 var8 var7 var6 var9 var5 var2 var0 var10 var3) (and (= var4 1) (<= 0 (+ var9 (- 1)))))) (inv_thr19_envLoop_thr var4 var1 var8 var7 var6 (+ var9 (- 1)) var5 var2 (+ var0 1) var10 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr15_envLoop_thr var5 var1 var7 var3 var8 var6 var2 var0 var9 var4) (and (= var5 1) (<= 0 (+ var8 (- 1)))))) (inv_thr15_envLoop_thr var5 var1 var7 var3 (+ var8 (- 1)) var6 var2 (+ var0 1) var9 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_thr10_envLoop_thr var4 var1 var6 var7 var5 var2 var0 var8 var3) (and (= var4 1) (<= 0 (+ var7 (- 1)))))) (inv_thr10_envLoop_thr var4 var1 var6 (+ var7 (- 1)) var5 var2 (+ var0 1) var8 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr110_envLoop_thr var4 var1 var6 var7 var8 var5 var2 var0 var9 var3) (and (= var4 1) (<= 0 (+ var8 (- 1)))))) (inv_thr110_envLoop_thr var4 var1 var6 var7 (+ var8 (- 1)) var5 var2 (+ var0 1) var9 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr12_envLoop_thr var5 var1 var7 var3 var8 var6 var2 var0 var9 var4) (and (not (= var5 1)) (<= 0 (+ var8 (- 1)))))) (inv_thr12_envLoop_thr var5 var1 var7 var3 (+ var8 (- 1)) var6 var2 var0 (+ var9 1) var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr13_envLoop_thr var4 var1 var7 var6 var8 var5 var2 var0 var9 var3) (and (not (= var4 1)) (<= 0 (+ var8 (- 1)))))) (inv_thr13_envLoop_thr var4 var1 var7 var6 (+ var8 (- 1)) var5 var2 var0 (+ var9 1) var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_thr19_envLoop_thr var5 var2 var7 var8 var1 var9 var6 var3 var0 var10 var4) (and (not (= var5 1)) (<= 0 (+ var9 (- 1)))))) (inv_thr19_envLoop_thr var5 var2 var7 var8 var1 (+ var9 (- 1)) var6 var3 var0 (+ var10 1) var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr15_envLoop_thr var5 var1 var7 var2 var8 var6 var3 var0 var9 var4) (and (not (= var5 1)) (<= 0 (+ var8 (- 1)))))) (inv_thr15_envLoop_thr var5 var1 var7 var2 (+ var8 (- 1)) var6 var3 var0 (+ var9 1) var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_thr10_envLoop_thr var4 var1 var6 var7 var5 var2 var0 var8 var3) (and (not (= var4 1)) (<= 0 (+ var7 (- 1)))))) (inv_thr10_envLoop_thr var4 var1 var6 (+ var7 (- 1)) var5 var2 var0 (+ var8 1) var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr110_envLoop_thr var4 var1 var7 var6 var8 var5 var2 var0 var9 var3) (and (not (= var4 1)) (<= 0 (+ var8 (- 1)))))) (inv_thr110_envLoop_thr var4 var1 var7 var6 (+ var8 (- 1)) var5 var2 var0 (+ var9 1) var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_thr12_envLoop_thr var6 var1 var8 var5 var9 var7 var3 var0 var10 var4) (<= 0 (+ var3 (- 1))))) (inv_thr12_envLoop_thr var6 (+ var2 1) var8 var5 var9 var7 (+ var3 (- 1)) var0 var10 (+ var4 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_thr13_envLoop_thr var5 var1 var7 var9 var8 var6 var3 var0 var10 var4) (<= 0 (+ var3 (- 1))))) (inv_thr13_envLoop_thr var5 (+ var2 1) var7 var9 var8 var6 (+ var3 (- 1)) var0 var10 (+ var4 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thr19_envLoop_thr var7 var2 var9 var5 var1 var10 var8 var4 var0 var11 var6) (<= 0 (+ var4 (- 1))))) (inv_thr19_envLoop_thr var7 (+ var3 1) var9 var5 var1 var10 var8 (+ var4 (- 1)) var0 var11 (+ var6 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_thr15_envLoop_thr var5 var1 var7 var8 var9 var6 var3 var0 var10 var4) (<= 0 (+ var3 (- 1))))) (inv_thr15_envLoop_thr var5 (+ var2 1) var7 var8 var9 var6 (+ var3 (- 1)) var0 var10 (+ var4 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr10_envLoop_thr var5 var1 var7 var8 var6 var3 var0 var9 var4) (<= 0 (+ var3 (- 1))))) (inv_thr10_envLoop_thr var5 (+ var2 1) var7 var8 var6 (+ var3 (- 1)) var0 var9 (+ var4 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_thr110_envLoop_thr var5 var1 var8 var7 var9 var6 var3 var0 var10 var4) (<= 0 (+ var3 (- 1))))) (inv_thr110_envLoop_thr var5 (+ var2 1) var8 var7 var9 var6 (+ var3 (- 1)) var0 var10 (+ var4 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr12_envLoop_thr var4 var1 var6 var8 var7 var5 var2 var0 var9 var3) (<= 0 (+ var3 (- 1))))) (inv_thr12_envLoop_thr var4 var1 var6 var8 var7 var5 var2 (+ var0 1) var9 (+ var3 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr13_envLoop_thr var5 var2 var7 var1 var8 var6 var3 var0 var9 var4) (<= 0 (+ var4 (- 1))))) (inv_thr13_envLoop_thr var5 var2 var7 var1 var8 var6 var3 (+ var0 1) var9 (+ var4 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_thr19_envLoop_thr var4 var1 var7 var8 var6 var9 var5 var2 var0 var10 var3) (<= 0 (+ var3 (- 1))))) (inv_thr19_envLoop_thr var4 var1 var7 var8 var6 var9 var5 var2 (+ var0 1) var10 (+ var3 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr15_envLoop_thr var4 var1 var6 var7 var8 var5 var2 var0 var9 var3) (<= 0 (+ var3 (- 1))))) (inv_thr15_envLoop_thr var4 var1 var6 var7 var8 var5 var2 (+ var0 1) var9 (+ var3 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_thr10_envLoop_thr var4 var1 var6 var7 var5 var2 var0 var8 var3) (<= 0 (+ var3 (- 1))))) (inv_thr10_envLoop_thr var4 var1 var6 var7 var5 var2 (+ var0 1) var8 (+ var3 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_thr110_envLoop_thr var4 var1 var6 var0 var7 var5 var2 var9 var8 var3) (<= 0 (+ var3 (- 1))))) (inv_thr110_envLoop_thr var4 var1 var6 var0 var7 var5 var2 (+ var9 1) var8 (+ var3 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (not (and (inv_thr110_envLoop_thr var11 var10 var8 var0 var6 var3 var1 var9 var12 var5) (and (and (and (= var11 var4) (= var10 var2)) (= var8 var7)) (or (or (not (<= 0 (+ var4 (- 1)))) (not (<= 0 (+ var7 (* (- 1) var4))))) (not (= var2 var0))))))))
(check-sat)
