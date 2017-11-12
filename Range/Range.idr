import Data.So

data InRange : (a : Int) -> (b : Int) -> Type where
    MkInRange : (x : Int) -> { auto inRange : So (x >= a && x <= b) } -> InRange a b
                         --     ^ evaluated at compile time 
    
value : InRange a b -> Int
value (MkInRange x) = x

implementation Num (InRange a b) where   -- v evaluated at run time
    (MkInRange x) + (MkInRange y) = case (choose (x + y >= a && x + y <= b)) of
                                         (Left l) => MkInRange (x+y)
                                         (Right r) => ?hole
    x * y = ?hole
    fromInteger x = ?hole 
    
add : InRange a b -> InRange a' b' -> InRange (a+a') (b+b')
add (MkInRange x) (MkInRange y) = MkInRange (x+y)


x : InRange 1 10
x = MkInRange 5

-- this should not compile
-- y : InRange 1 10
-- y = the (InRange 1 10) (MkInRange 15)

y : InRange 1 10
y = MkInRange 8

z : InRange 1 10
z = MkInRange 3

-- this should not compile ? (assuming the compiler interprets x + y) 
w : InRange 1 10
w = x + y
