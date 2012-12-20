module Main

main : IO ()
main = do
  a <- getLine
  b <- getLine
  putStr $ a ++ b

-- Equivalently:
--main = [| getLine ++ getLine |] >>= putStr
