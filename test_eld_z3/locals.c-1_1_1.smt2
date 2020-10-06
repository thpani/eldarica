(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_thrB2_envLoop_thrA_envLoop_thrB (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_thrB5_envLoop_thrA_envLoop_thrB (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_thrB6_envLoop_thrA_envLoop_thrB (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_thrB8_envLoop_thrA_envLoop_thrB (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (and (and (and (<= 0 (+ var0 (- 1))) (<= 0 (+ var5 (- 1)))) (and (and (and (= 0 var2) (= 0 var10)) (= var0 var3)) (= var5 var8))) (and (and (<= 0 (+ var9 (- 1))) (<= 0 (+ var7 (- 1)))) (and (and (and (= 0 var2) (= 0 var10)) (= var9 var3)) (= var7 var8)))) (and (and (<= 0 (+ var1 (- 1))) (<= 0 (+ var6 (- 1)))) (and (and (and (= 0 var2) (= 0 var10)) (= var1 var3)) (= var6 var8))))) (inv_thrB2_envLoop_thrA_envLoop_thrB var2 var10 var3 var8 var4 0 0 var9 0 0 0 (+ var6 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (inv_thrB5_envLoop_thrA_envLoop_thrB var8 var10 var1 var6 var9 var11 var3 var5 var2 var0 var7 var4)) (inv_thrB6_envLoop_thrA_envLoop_thrB (+ var8 1) var10 var1 var6 var9 var11 var3 var5 var2 var0 var7 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB6_envLoop_thrA_envLoop_thrB var8 var10 var2 var7 var9 var4 var5 var0 var6 var3 var1 var11) (= (+ var2 var7) var8))) (inv_thrB8_envLoop_thrA_envLoop_thrB var8 var10 var2 var7 var9 var4 var5 var0 var6 var3 var1 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (inv_thrB2_envLoop_thrA_envLoop_thrB var9 var11 var1 var7 var10 var3 var4 var6 var8 var0 var2 var5)) (inv_thrB5_envLoop_thrA_envLoop_thrB var9 var11 var1 var7 (+ var11 1) var3 var4 var6 var8 var0 var2 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB2_envLoop_thrA_envLoop_thrB var8 var10 var0 var5 var11 var7 var4 var2 var6 var1 var9 var3) (<= 0 (+ var4 (- 1))))) (inv_thrB2_envLoop_thrA_envLoop_thrB (+ var8 1) var10 var0 var5 var11 (+ var7 1) (+ var4 (- 1)) var2 var6 var1 var9 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB6_envLoop_thrA_envLoop_thrB var10 var11 var1 var7 var4 var9 var6 var2 var0 var5 var3 var8) (<= 0 (+ var6 (- 1))))) (inv_thrB6_envLoop_thrA_envLoop_thrB (+ var10 1) var11 var1 var7 var4 (+ var9 1) (+ var6 (- 1)) var2 var0 var5 var3 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB5_envLoop_thrA_envLoop_thrB var9 var11 var0 var6 var7 var8 var5 var3 var2 var10 var1 var4) (<= 0 (+ var5 (- 1))))) (inv_thrB5_envLoop_thrA_envLoop_thrB (+ var9 1) var11 var0 var6 var7 (+ var8 1) (+ var5 (- 1)) var3 var2 var10 var1 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB8_envLoop_thrA_envLoop_thrB var9 var10 var2 var7 var1 var8 var5 var3 var0 var4 var11 var6) (<= 0 (+ var5 (- 1))))) (inv_thrB8_envLoop_thrA_envLoop_thrB (+ var9 1) var10 var2 var7 var1 (+ var8 1) (+ var5 (- 1)) var3 var0 var4 var11 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB2_envLoop_thrA_envLoop_thrB var9 var11 var1 var7 var0 var8 var5 var2 var3 var4 var10 var6) (<= 0 (+ var2 (- 1))))) (inv_thrB2_envLoop_thrA_envLoop_thrB var9 var11 var1 var7 var0 var8 (+ var5 1) (+ var2 (- 1)) var3 var4 var10 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB6_envLoop_thrA_envLoop_thrB var10 var11 var1 var8 var2 var9 var7 var3 var0 var6 var4 var5) (<= 0 (+ var3 (- 1))))) (inv_thrB6_envLoop_thrA_envLoop_thrB var10 var11 var1 var8 var2 var9 (+ var7 1) (+ var3 (- 1)) var0 var6 var4 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB5_envLoop_thrA_envLoop_thrB var9 var10 var0 var6 var11 var8 var5 var2 var4 var7 var1 var3) (<= 0 (+ var2 (- 1))))) (inv_thrB5_envLoop_thrA_envLoop_thrB var9 var10 var0 var6 var11 var8 (+ var5 1) (+ var2 (- 1)) var4 var7 var1 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB8_envLoop_thrA_envLoop_thrB var10 var11 var2 var8 var1 var9 var7 var5 var6 var3 var0 var4) (<= 0 (+ var5 (- 1))))) (inv_thrB8_envLoop_thrA_envLoop_thrB var10 var11 var2 var8 var1 var9 (+ var7 1) (+ var5 (- 1)) var6 var3 var0 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB2_envLoop_thrA_envLoop_thrB var10 var11 var2 var7 var4 var8 var9 var3 var1 var6 var5 var0) (<= 0 (+ var6 (- 1))))) (inv_thrB2_envLoop_thrA_envLoop_thrB (+ var10 1) var11 var2 var7 var4 var8 var9 var3 (+ var1 1) (+ var6 (- 1)) var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB6_envLoop_thrA_envLoop_thrB var10 var11 var2 var7 var6 var9 var5 var3 var1 var8 var4 var0) (<= 0 (+ var8 (- 1))))) (inv_thrB6_envLoop_thrA_envLoop_thrB (+ var10 1) var11 var2 var7 var6 var9 var5 var3 (+ var1 1) (+ var8 (- 1)) var4 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB5_envLoop_thrA_envLoop_thrB var8 var11 var3 var6 var2 var10 var9 var5 var1 var7 var4 var0) (<= 0 (+ var7 (- 1))))) (inv_thrB5_envLoop_thrA_envLoop_thrB (+ var8 1) var11 var3 var6 var2 var10 var9 var5 (+ var1 1) (+ var7 (- 1)) var4 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB8_envLoop_thrA_envLoop_thrB var10 var11 var3 var8 var2 var4 var7 var6 var1 var9 var5 var0) (<= 0 (+ var9 (- 1))))) (inv_thrB8_envLoop_thrA_envLoop_thrB (+ var10 1) var11 var3 var8 var2 var4 var7 var6 (+ var1 1) (+ var9 (- 1)) var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB2_envLoop_thrA_envLoop_thrB var8 var10 var2 var5 var3 var11 var7 var9 var1 var6 var4 var0) (and (= (+ var2 var5) var8) (<= 0 (+ var1 (- 1)))))) (inv_thrB2_envLoop_thrA_envLoop_thrB var8 var10 var2 var5 var3 var11 var7 var9 (+ var1 (- 1)) var6 (+ var4 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB6_envLoop_thrA_envLoop_thrB var9 var11 var3 var7 var2 var10 var6 var5 var1 var8 var4 var0) (and (= (+ var3 var7) var9) (<= 0 (+ var1 (- 1)))))) (inv_thrB6_envLoop_thrA_envLoop_thrB var9 var11 var3 var7 var2 var10 var6 var5 (+ var1 (- 1)) var8 (+ var4 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB5_envLoop_thrA_envLoop_thrB var10 var11 var4 var8 var5 var9 var2 var3 var1 var7 var6 var0) (and (= (+ var4 var8) var10) (<= 0 (+ var1 (- 1)))))) (inv_thrB5_envLoop_thrA_envLoop_thrB var10 var11 var4 var8 var5 var9 var2 var3 (+ var1 (- 1)) var7 (+ var6 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB8_envLoop_thrA_envLoop_thrB var10 var11 var3 var7 var9 var5 var6 var2 var1 var8 var4 var0) (and (= (+ var3 var7) var10) (<= 0 (+ var1 (- 1)))))) (inv_thrB8_envLoop_thrA_envLoop_thrB var10 var11 var3 var7 var9 var5 var6 var2 (+ var1 (- 1)) var8 (+ var4 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB2_envLoop_thrA_envLoop_thrB var10 var11 var2 var8 var6 var5 var3 var4 var1 var9 var7 var0) (<= 0 (+ var0 (- 1))))) (inv_thrB2_envLoop_thrA_envLoop_thrB var10 var11 var2 var8 var6 var5 var3 var4 var1 (+ var9 1) var7 (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB6_envLoop_thrA_envLoop_thrB var10 var11 var4 var8 var3 var2 var7 var6 var1 var9 var5 var0) (<= 0 (+ var0 (- 1))))) (inv_thrB6_envLoop_thrA_envLoop_thrB var10 var11 var4 var8 var3 var2 var7 var6 var1 (+ var9 1) var5 (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB5_envLoop_thrA_envLoop_thrB var10 var11 var3 var8 var7 var2 var5 var4 var1 var9 var6 var0) (<= 0 (+ var0 (- 1))))) (inv_thrB5_envLoop_thrA_envLoop_thrB var10 var11 var3 var8 var7 var2 var5 var4 var1 (+ var9 1) var6 (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_thrB8_envLoop_thrA_envLoop_thrB var10 var11 var4 var7 var5 var3 var2 var9 var1 var8 var6 var0) (<= 0 (+ var0 (- 1))))) (inv_thrB8_envLoop_thrA_envLoop_thrB var10 var11 var4 var7 var5 var3 var2 var9 var1 (+ var8 1) var6 (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int)) (not (and (inv_thrB8_envLoop_thrA_envLoop_thrB var4 var6 var9 var12 var8 var2 var11 var14 var10 var1 var15 var3) (and (and (and (and (= var4 var13) (= var6 var7)) (= var9 var0)) (= var12 var5)) (not (= (+ var0 var5) var13)))))))
(check-sat)
