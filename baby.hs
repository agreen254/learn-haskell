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

compOne = [x * 2 | x <- [1 .. 10]]

compTwo = [x * 2 | x <- [1 .. 10], x * 2 >= 12]

compThree = [x | x <- [50 .. 100], x `mod` 7 == 3]

-- weeding out lists by predicates is called `filtering`
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

ligmas = [ x*y*z | x <- [1, 2, 3], y <- [4, 5, 6], z <- [7, 8, 9]]

nouns = ["Geezer", "Malcontent", "Ne'er-do-well"]
adjectives = ["Dastardly", "Lugubrious", "Conniving"]

expressions = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

-- the _ means that we don't care what we draw from the list, so instead of
-- declaring a variable name we will never use, we write _
-- the function below replaces every element of a list with 1 and then sums them
length' xs = sum [1 | _ <- xs]

removeNonUpperCase st = [c | c <- st, c `elem` ['A'..'Z']]
removeNonLowerCase st = [c | c <- st, c `elem` ['a'..'z']]

-- can also do nested filtering, of course!!
xxs = [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15]]
xxsFilt = [ [x | x <- xs, odd x] | xs <- xxs]
