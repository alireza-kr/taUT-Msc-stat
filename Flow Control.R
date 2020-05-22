##### IF Statement #####
if (2<3) {
  print("The if statement executed!")
} else {
  print("The else statement executed!")
}

if (2>3) {
  print("The if statement executed!")
} else {
  print("The else statement executed!")
}

if (2>3) {
  print("The if statement executed!")
} else if (2<3) {
  print("The else if statement executed!")
} else {
  print("The else statement executed!")
}

##### Switch Statement #####
#Based on Index
num=1
result <- switch(num,
                 "One",
                 "Two",
                 "Three")
result

##### Switch Statement #####
#Based on Matching Value
num="1"
result <- switch(num,
       "1"="One",
       "2"="Two",
       "3"="Three",
       "I cannot recognize!")
result

##### While Statement #####
a=1
b=5

while (b>a) {
  print("a<b")
  print(paste("a =",a))
  print(paste("b =",b))
  a=a+1
}

##### For Statement #####
for (i in 1:5) {
  print(i)
}
