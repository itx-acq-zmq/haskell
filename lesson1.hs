{-
Lesson #1 2/5/2015
Haskell Functional Programming Language
https://wiki.haskell.org/Haskell
http://www.euclideanspace.com/software/language/functional/index.htm

Hoogle
https://www.haskell.org/hoogle/

Infix operators and functions
https://wiki.haskell.org/Infix_operator

Haskell Keywords
https://wiki.haskell.org/Keywords#where

Haskell Operators
http://www.imada.sdu.dk/~rolf/Edu/DM22/F06/haskell-operatorer.pdf
http://www.euclideanspace.com/software/language/functional/haskell/operators/index.htm
-}


--Simple Prefix Functions
addOneTo i = i + 1

addTwoTo j = j + 2

--Nested Functions LET and WHERE
alwaysEven a b = let isEven x = if even x
                                then x
                                else x - 1
                             in(isEven a, isEven b)

alwaysEven' a b = (isEven a, isEven b)
     where isEven x = if even x then x else x - 1

--Recursion and Sorting Functions
qsorta :: Ord a => [a] -> [a]
qsorta []     = []
qsorta (p:xs) = qsorta lesser ++ [p] ++ qsorta greater
    where
        lesser  = [ y | y <- xs, y < p ]
        greater = [ y | y <- xs, y >= p ]

qsortb :: Ord a => [a] -> [a]
qsortb []     = []
qsortb (x:xs) = qsortb lesser ++ equal ++ qsortb greater
    where
        (lesser,equal,greater) = part x xs ([],[x],[])

part :: Ord a => a -> [a] -> ([a],[a],[a]) -> ([a],[a],[a])
part _ [] (l,e,g) = (l,e,g)
part p (x:xs) (l,e,g)
    | x > p     = part p xs (l,e,x:g)
    | x < p     = part p xs (x:l,e,g)
    | otherwise = part p xs (l,x:e,g)

qsortc :: Ord a => [a] -> [a]
qsortc x = qsortc' x []

qsortc' [] y     = y
qsortc' [x] y    = x:y
qsortc' (x:xs) y = part xs [] [x] []
    where
        part [] l e g = qsortc' l (e ++ (qsortc' g y))
        part (z:zs) l e g
            | z > x     = part zs l e (z:g)
            | z < x     = part zs (z:l) e g
            | otherwise = part zs l (z:e) g

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted

--Simple Recursion in Lists and tuples
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

{-
Homework Assignment Due: 2/12/2015
1. Write a Haskell prefix function [Bool] to determine 
   using recursion if an element is in a list. 
   Test your function against multiple types.
   Hint: Use Hoogle as a guide. Your function should
   be <10 lines of code.
   
   Solution [5 lines]:
   elem' :: (Eq a) => a -> [a] -> Bool
   elem' a [] = False
   elem' a (x:xs)
    | a == x    = True
    | otherwise = a `elem'` xs
-}
