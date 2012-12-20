module Record


record Person: Type where
  MkPerson : (name: String) ->
             (age: Int) ->
             (knows: List Person) ->
             Person

jName : Maybe String
jName = Just "Bob"

jAge : Maybe Int
jAge = Just 30

nAge : Maybe Int
nAge = Nothing

jFriends : Maybe (List Person)
jFriends = Just [MkPerson "Jane" 32 []]


record Class : Type where
  ClassInfo : (students : Vect Person n) -> Class

friends : List Person
friends = [MkPerson "Leif" 33 []]

record Thing: Type where
  MkThing : (name: String) -> (frobs: Nat) -> Thing

data X = A | B

--data Y = MkY {name : String}
