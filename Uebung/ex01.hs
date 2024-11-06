-- Aufgabe 1)
-- a)

-- Wenn Lehmann die Wahrheit spricht, dann lügt Müller: lehmann⇒¬mueller

-- Wenn Müller die Wahrheit sagt, dann lügt Schulze: mueller⇒¬Schulze

-- Wenn Schulze die Wahrheit sagt, dann lügt Lehmann und Mueller:  schulze⇒(¬lehmann∧¬mueller)


-- Zusammengefasst: 
--     (lehmann ⇒ ¬mueller)∧(mueller ⇒ ¬Schulze)∧(schulze ⇒ (¬lehmann ∧ ¬mueller))
-- ⇔  (lehmann ⇒ ¬mueller)∧(mueller ⇒ ¬Schulze)∧(schulze ⇒ ¬(lehmann v mueller))
-- ⇔  (¬lehmann v  mueller)∧(¬mueller v Schulze)∧(¬schulze v (lehmann v mueller))

b