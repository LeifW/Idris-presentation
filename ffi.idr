module Main
%lib "m"
%include "math.h"

exp : Float -> IO Float
exp = mkForeign (FFun "exp" [FFloat] FFloat)

exp2 : Float -> Float
--exp2 x = believe_me $ mkForeign (FFun "exp" [FFloat] FFloat) x
exp2 = unsafePerformIO . mkForeign (FFun "exp" [FFloat] FFloat)

db : |(foo:Int) -> Int
db = (*2)

db1 : |(x:Int) -> Int
db1 x = x * 2

--num : Float
--num = (exp 5.0) + 10.0

main : IO ()
main = do
  --print num
  e <- exp 5.0
  print e
  print (db 5)
  print (db1 5)
  print $ exp2 1.0
  return ()

