import Data.So

data Positive : Type where
    MkPositive : (x: Nat) -> { auto positive : x `GT` Z } -> Positive

implementation Num Positive where
    (MkPositive (S k)) + (MkPositive (S j)) = MkPositive (S (S (j+k)))
    x * y = ?hole
    fromInteger x = ?hole
x : Positive 
x = MkPositive 1

-- this shouldn't compile
-- y : Positive
-- y = MkPositive (-1)

y : Positive 
y = MkPositive 3

z : Positive
z = x + y

f : Positive -> Positive 
f (MkPositive Z) = MkPositive 3
