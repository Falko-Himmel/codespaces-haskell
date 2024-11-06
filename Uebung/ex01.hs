-- Aufgabe 1)
-- a)

-- Wenn Lehmann die Wahrheit spricht, dann lügt Müller: lehmann⇒¬mueller

-- Wenn Müller die Wahrheit sagt, dann lügt Schulze: mueller⇒¬Schulze

-- Wenn Schulze die Wahrheit sagt, dann lügt Lehmann und Mueller:  schulze⇒(¬lehmann∧¬mueller)


-- Zusammengefasst: 
--     (lehmann ⇒ ¬mueller)∧(mueller ⇒ ¬schulze)∧(schulze ⇒ (¬lehmann ∧ ¬mueller))
-- ⇔  (lehmann ⇒ ¬mueller)∧(mueller ⇒ ¬schulze)∧(schulze ⇒ ¬(lehmann v mueller))
-- ⇔  (¬lehmann v  mueller)∧(¬mueller v Schulze)∧(¬schulze v (lehmann v mueller))

-- b)

-- l := lehmann
-- m := mkDuplexHandleNoFinalizer
-- s := schulze

-- l   m   s   (¬l v  m)   (¬m v s)    (¬s v (l v m))    (¬l v  m)∧(¬m v s)∧(¬s v (l v m))
-- 0   0   0       1           1               1                       1
-- 0   0   1       1           1               0                       0
-- 0   1   0       1           0               1                       0
-- 0   1   1       1           1               1                       1
-- 1   0   0       0           1               1                       0
-- 1   0   1       0           1               1                       0
-- 1   1   0       1           0               1                       0
-- 1   1   1       1           1               1                       1

-- Nur wahre Wahrheitswerte für:

--     -  Lehmann lügt, Müller lügt, Schulze lügt
--     -  Lehmann lügt, Müller sagt die Wahrheit, Schulze sagt die Wahrheit
--     -  Lehmann sagt die Wahrheit,  Müller sagt die Wahrheit, Schulze sagt die Wahrheit

-- c)
riddle :: Bool -> Bool -> Bool -> Bool
riddle l m s = (not l ||  m)&&(not m || s)&&(not s || (l || m))


-- Aufgabe 2)

-- a)
-- (𝑎 ⋅ 𝑤𝑎 + 𝑏 ⋅ 𝑤𝑏)/(𝑤𝑎 + 𝑤𝑏) 
