doubleUs x y = doubleMe x + doubleMe y

doubleMe x = x + x

doubleSmallNumber x =
  if x > 100
    then x
    else doubleMe x

doubleSmallNumber' x =
  ( if x > 100
      then x
      else doubleMe x
  )
    + 1

lostNumbers = [4, 8, 15, 16, 23, 42]

numsOne = [5, 10, 15, 20]

numsTwo = [18, 36, 48, 52]

numsThree = numsOne ++ numsTwo

cat = 'A' : " SMALL CAT"

numsFour = 8 : numsOne

numsFive = 1 : 2 : 3 : []

numSix = numsFive !! 1

r = [1 .. 100]

charsOne = ['a' .. 'z']

charsTwo = reverse ['K' .. 'P']

numsSeven = [1, 3 .. 21]

numsEight = [20, 19 .. 1]

compOne = [x*2 | x <- [1..10]]

compTwo = [x*2 | x <- [1..10], x*2 >= 12]

compThree = [x | x <- [50..100], x `mod` 7 == 3]

boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]