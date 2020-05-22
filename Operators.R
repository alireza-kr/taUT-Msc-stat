##### Assign Variable #####
stat.score <- 18
stat.score = 19
assign("stat.score",20)
stat.score     #print value

##### Arithmetic Operators #####
10+5     #Addition
10-5     #Subtraction
10*5     #Multiplication
10/5     #Division
10^5     #Exponentiation
format(10**5,scientific=FALSE)     #Exponentiation
10%%3     #Modulus
10%/%3     #Integer Division

abs(-5)     #Absolute
log(2)     #Natural Log
log(2,base=10)     #Log
exp(5)     #Exponential
factorial(5)     #Factorial

pi     #PI
1/0     #Positive Infinity
-1/0     #Negative Infinity
Inf/Inf     #NaN (Not a Number)
NA     #NA (Not Available)
is.na(NA)
is.nan(NaN)

##### Logica Operators #####
5>2     #greater than
5>=2     #greater than equal to
5<2     #less than
5<=2     #less than equal to
5==2     #exactly equal to
!(TRUE)     #Logical NOT Operator
TRUE|FALSE     #Logical OR Operator
TRUE&FALSE     #Logical AND Operator

##### Vectorized Operators #####
student.stat.marks <- c(20,18,19,20,20)
student.psych.marks <- c(18,19,19,18,20)
student.psych.marks <- student.psych.marks+1
student.total.marks <- student.stat.marks+studnet.psych.marks
mean(student.total.marks)