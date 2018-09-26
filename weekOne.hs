-- Haskell
-- Its "expression-only" language

-- Expression 
v = a+b - c *(d+e) -- Similar to other languages
 
-- Functions 
{-

*** In Python***
def hello(name):
     return "Hello , " + name

-}

-- In Haskell 
-- arg not passed in brackets
hello name = "Hello , " ++name -- ++(concatenation) is separate from addition(+)

-- type declaration for a function
-- In Haskell Function type declaration and function definition is separate

sq::Int->Int->Int --(first arg) -> (second arg) -> (return arg)
sq x y = x*x + y*y

-- lists in haskell
 lst = [ "A", "list", "of", "strings"]
 -- Join Two List
 joinLst = [1,2]++[3,4]

 -- Anonymous or Lambda functions in Haskell
   f = \x y -> x*y+x+y

  -- Higher Order Functions
  map (\x -> x*2+1) [1..10]

  {-
Precedence of function application
Function application binds tighter than anything else.
So f x + 3 means (f x) + 3 and not f (x+3)
If an argument to a function is an expression, you’ll need to put it in parentheses.
  -}

  