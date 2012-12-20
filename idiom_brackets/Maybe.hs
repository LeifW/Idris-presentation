{-# OPTIONS_GHC -F -pgmF she #-}
import Control.Applicative

{- Nothing really to do with Idris, just some background on Applicatives,
   with Maybe as an example.
   p1 - p4 are all equivalent ways of writing the same thing; the last one uses idiom brackets.
-}

name :: Maybe String
name = Just "Bob"

age :: Maybe Int
age = Just 30

data Person = Person String Int

greeting1 = case name of
  Nothing -> "Hello, Nobody"
  Just n -> "Hello, " ++ n

greeting2 = maybe "Hello, Nobody" ("Hello, " ++) name


p1 :: Maybe Person
p1 = case name of
  Nothing -> Nothing
  Just n -> case age of
    Nothing -> Nothing
    Just a -> Just $ Person n a

p2 :: Maybe Person
p2 = do
  n <- name
  a <- age
  return $ Person n a
  
p3 :: Maybe Person
p3 = Person <$> name <*> age

p4 :: Maybe Person
p4 = (| Person name age |)
