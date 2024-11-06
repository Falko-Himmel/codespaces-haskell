import Data.List (partition)

main :: IO ()
main = do
  convertDecToBin 234
  print (convertBinToDec [1, 1, 1, 0, 1, 0, 1, 0] 0)
 



convertBinToDec :: [Int] -> Int -> Int
convertBinToDec [] _ = 0
convertBinToDec x i =
  let (lsb, newList) = readAndRemoveLSB x
  in (lsb * 2^i) + convertBinToDec newList (i + 1)



-- Funktion, um das LSB zu lesen und zu entfernen
readAndRemoveLSB :: [Int] -> (Int, [Int])
readAndRemoveLSB xs = (last xs, init xs)  -- LSB lesen und Liste verkürzen




convertDecToBin :: Integer -> IO ()
convertDecToBin 0 = print ("Berechnung vollendet! Nach oben Zahl ablesen")
convertDecToBin x = do
  print (x `mod` 2)
  convertDecToBin(x `div` 2)