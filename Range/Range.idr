import Data.So
data Range : (a : Int) -> (b : Int) -> Type where
    MkRange : (x : Int) -> { auto inRange : So (x >= a && x <= b) } -> Range a b

x : Range 1 10
x = the (Range 1 10) (MkRange 5)
y : Range 1 10
y = the (Range 1 10) (MkRange 15)
