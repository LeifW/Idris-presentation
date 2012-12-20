module Main

five : Int
five = 5

b : Nat
b = fromInteger five

big : Integer
big = 999999999999999999999999999999

main : IO ()
main = do
  putStr "Please enter a number: "
  a <- getLine
  putStr "And another: "
  b <- getLine
  print $ cast a + cast b

