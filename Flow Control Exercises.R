##### Sign of a number #####
NumberSign <- function(num) {
  if(num>0) {
    print("Positive Number!")
  }
  else if(num<0) {
    print("Negative Number!")
  }
  else {
    print("Zero!")
  }
}

NumberSign(+1)
NumberSign(1)
NumberSign(0)
NumberSign(-1)

##### Descriptive statistics #####
GetMarkSummary <- function(test.mark,summary.type) {
  result <- switch(summary.type,
            "mean"={mean(test.mark)},
            "median"={median(test.mark)},
            "variance"={var(test.mark)},
            "Not Implemented"
            )
  result
}

GetMarkSummary(c(20,19,18,18,19.5,18.5,20,19,18,20),"mean")
GetMarkSummary(c(20,19,18,18,19.5,18.5,20,19,18,20),"median")
GetMarkSummary(c(20,19,18,18,19.5,18.5,20,19,18,20),"variance")
GetMarkSummary(c(20,19,18,18,19.5,18.5,20,19,18,20),"unknown")

##### Rock–Paper–Scissors #####
RockPaperScissors <- function() {
  choice <- c("Rock","Paper","Scissors")
  #pScore: Person's Score, cScore: Computer's Score
  pScore=cScore=0
  
  while(cScore<3&pScore<3){
    cChoice <- sample(choice,1)
    pChoice <- readline("Enter your choice: ")
    #Whenever you want to quit the game, just type "Exit".
    if (pChoice=="Exit"){
      break
    }
    #If you do not type "Rock", "Paper", or "Scissors", the computer asks you to type them correcly!
    if (pChoice!="Rock"&pChoice!="Paper"&pChoice!="Scissors"){
      print("Please choose Rock,Paper, or Scissors")
    }
    else if ((cChoice=="Rock"&pChoice=="Scissors")|
             (cChoice=="Paper"&pChoice=="Rock")|
             (cChoice=="Scissors"&pChoice=="Paper")){
      cScore=cScore+1
      print(paste("You chose ", pChoice))
      print(paste("Computer chose ", cChoice))
      print(paste("Your score is", pScore))
      print(paste("Computer score is", cScore))
    }
    else if ((pChoice=="Rock"&cChoice=="Scissors")|
             (pChoice=="Paper"&cChoice=="Rock")|
             (pChoice=="Scissors"&cChoice=="Paper")){
      pScore=pScore+1
      print(paste("You chose ", pChoice))
      print(paste("Computer chose ", cChoice))
      print(paste("Your score is", pScore))
      print(paste("Computer score is", cScore))
    }
    else if ((pChoice=="Rock"&cChoice=="Rock")|
             (pChoice=="Paper"&cChoice=="Paper")|
             (pChoice=="Scissors"&cChoice=="Scissors")) {
      print(paste("You chose ", pChoice))
      print(paste("Computer chose ", cChoice))
      print(paste("Your score is", pScore))
      print(paste("Computer score is", cScore))
    }
    else {}
  }
  if(cScore>pScore) {
    print("Computer Win!")
  }
  else if(cScore<pScore) {
    print("You Win!")
  }
  else {
    print("Exit")
  }
}

RockPaperScissors()

##### Draw Function #####
#Define the function
func.parabola <- function(x) x^2 + x

#Define the vectors
x <- vector("numeric",length = 100)
y <- vector("numeric",length = 100)

#Compute the results
for (i in 1:100) {
  x[i] <- i
  y[i] <- func.parabola(i)
}

plot(x,y,type="l")

##### Matrix Multiplication #####
MatrixMult <- function(mat1,mat2) {
  #Check whether or not the dimensions of the matrices are correct
  if(ncol(mat1)!=nrow(mat2)) {
    print("The dimension of the matrices are not correct!")
  }
  else {
    result <- matrix(0,ncol=ncol(mat2),nrow=nrow(mat1))
    #To multiply two matrices you need NESTED LOOP. Search NESTED LOOP to find out how it works!
    for(i in 1:nrow(mat1)) {
      for(j in 1:ncol(mat2)) {
        for(k in 1:ncol(mat1)) {
          result[i,j] = result[i,j]+(mat1[i,k]*mat2[k,j])
        }
      }
    }
    return(result)
  }
}

#Define Matrices
mat1 <- matrix(c(1,2,3,2,2,1,1,5,3,2,6,1,2,3,4),ncol=3,nrow=5)
mat2 <- matrix(c(3,2,1,2,2,1,1,5,3,4,2,2),ncol=4,nrow=3)

MatrixMult(mat1,mat2)