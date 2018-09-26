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

-- /------------------------------------------------------------------------------------------

-- ************** BASIC - 2 **************************
-- Lambda Expressions
-- Let 
-- Conditionals
-- Higher Order Expressions


-- *************** LAMBDAS ***********************

-- In JavaScript : 
{-

f = function(x,y) {
	     return x*x + y*y;
            }

-}

-- In Haskell :
f = \x y = x*x + y*y

-- **************** LET ***********************

-- function in Javascript to find roots of quad eqn with coef a b c
{-

function roots(a,b,c){
	det2 = b*b - 4*a*c;
    det = sqrt(det2);
    root1 = (-b+det)/2;
    root2 = (-b-det)/2;
    return [root1,root2];
}

-}

-- In Haskell

roots a b c =
 let 
    det2 = b*b - 4*a*c
    det = sqrt(det2)
    root1 = (-b+det)/2
    root2 = (-b-det)/2
 in 
    [root1,root2]

-- ***************** Conditionals **************************
-- In Python
{-
def max(x,y):
    if x > y:
    	return x
    else :
        return y
-}

-- In Haskell 
maxFinder x y = if x>y then x else y

-- Higher Order Functions 

-- In Perl
{-
map sub($x){2*$x},[1..10]
-}
-- In Haskell
map (\x->2*x)[1..10]

-- Many languages provide a case statement for conditions with more than two choices. 
-- Case Statement in Haskell

-- In Ruby
{- 
    Red = 1
    Blue = 2
    Yellow = 3

    color = set_color();
    action = case color 
        when Red then action1()
        when Blue then action2()
        when Yellow then action3()
    end
-}

-- In Haskell
data Color = Red | Blue | Yellow

color = set_color
action = case color of 
	Red -> action1 
	Blue -> action2
	Yellow -> action3
{- 
In Java and C++ there are generic data types (aka template types), such as:

    Map<String,Integer> set = new HashMap<String,Integer>();

-}
-- In Haskell
    set :: Data.Map.Map String Integer 
    set = Data.Map.empty
 {-

The main difference is of course that set in Haskell is not an object but an immutable variable, so where in Java you would say:

    set.put("Answer",42) -}

--In Haskell you would say:

    set' = Data.Map.insert "Answer" 42 set
--Because in Haskell variables are immutable, the return value of the insert call is bound to a new variable rather than updating the variable in place as in Java.
