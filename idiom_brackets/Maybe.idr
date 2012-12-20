name : Maybe String
name = Just "Bob"

age : Maybe Int
age = Just 30

data Person = MkPerson String Int

p2 : Maybe Person
p2 = do
  n <- name
  a <- age
  return $ MkPerson n a

p3 : Maybe Person
p3 = fmap MkPerson name <$> age

p4 : Maybe Person
p4 = [| MkPerson name age |]
