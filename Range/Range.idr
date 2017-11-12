import Data.So

data InRange : (a : Int) -> (b : Int) -> Type where
    MkInRange : (x : Int) -> { auto inRange : So (x >= a && x <= b) } -> InRange a b
    
value : InRange a b -> Int
value (MkInRange x) = x

implementation Num (InRange a b) where
    (MkInRange x) + (MkInRange y) = case (choose (x + y >= a && x + y <= b)) of
                                         (Left l) => MkInRange (x+y)
                                         (Right r) => ?hole
    x * y = ?hole
    fromInteger x = ?hole 

x : InRange 1 10
x = MkInRange 5

-- this should not compile
-- y : InRange 1 10
-- y = the (InRange 1 10) (MkInRange 15)

y : InRange 1 10
y = MkInRange 8

z : InRange 1 10
z = MkInRange 3

-- this should not compile
w : InRange 1 10
w = x + y
