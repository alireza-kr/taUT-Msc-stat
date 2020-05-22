##### Function #####
func <- function(a,b) {
  return(a+b)
}

func(5,5)

##### Function with Local Variable #####
b=0

func <- function(a) {
  b <- 5
  return(a+b)
}

func(5)
b

##### Function with Global Variable #####
b=0

func <- function(a) {
  b <<- 5
  return(a+b)
}

func(5)
b