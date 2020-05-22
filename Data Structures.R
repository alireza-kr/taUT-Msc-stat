##### Data Structures: Atomic Vector #####
student.name <- c("A","B","C","D","E")
str(student.name)

student.id <- c(1,2,3,4,5)
str(student.id)

student.marks <- c(19.5,19.2,18,18.9,20)
str(student.marks)

student.marks[2]
student.marks[2:4]
student.name[student.marks>19]

as.character(student.marks)
as.numeric(student.name)

#Create atomic vectors using vector()
vector("character",length = 5)     #default: empty string
vector("numeric",length = 5)     #default: 0
vector("integer",length = 5)     #default: 0
vector("logical",length = 5)     #default: FALSE

#Factor
student.gender <- c("male","female","female","male","female")
student.gender
student.gender <- factor(c("male","female","female","male","female"))
student.gender

##### Data Structures: Data Frame #####
student.name <- c("A","B","C","D","E")
student.gender <- c("male","female","female","male","female")
student.id <- c(1,2,3,4,5)
student.marks <- c(19.5,19.2,18,18.9,20)

students <- data.frame(student.name,student.gender,
                       student.id,student.marks,
                       stringsAsFactors = FALSE)
students
str(students)
names(students) <- c("name","gender","id","marks")
names(students)
colnames(students)

students$name
students[[1]]     #double brackets [[]] return the object in its own type
students[["name"]]
students[1]
students["name"]
students[1:3]
students[c("name","marks")]
students[1,2]     #Row number, Cloumn number
students[1:3,1:2]
students[c(1,3),c(1,2)]
students[,1]
students[1,]
students[c(T,T,F,F,T),]
students[students$gender=="male",]
students[student.marks<19,]

##### Data Structures: Matrix #####
student.stat.marks <- c(20,18,19,20,20)
student.psych.marks <- c(18,19,19,18,20)

student.marks <- rbind(student.stat.marks,student.psych.marks)
colnames(student.marks) <- c("A","B","C","D","E")
student.marks

student.marks <- cbind(student.stat.marks,student.psych.marks)
rownames(student.marks) <- c("A","B","C","D","E")
student.marks

student.marks <- matrix(c(20,18,19,20,20,18,19,19,18,20),ncol=2,nrow=5)
student.marks
student.marks <- matrix(c(20,18,19,20,20,18,19,19,18,20),ncol=2,nrow=5,byrow=TRUE)
student.marks
str(student.marks)

student.marks[c(T,T,F,F,T),1:2]

rowSums(student.marks)
colSums(student.marks)
colMeans(student.marks)

##### Data Structures: Array #####
class1.student.stat.marks <- c(20,18,19,20,20)
class1.student.psych.marks <- c(18,19,19,18,20)
class1.student.marks <- cbind(class1.student.stat.marks,
                              class1.student.psych.marks)

class2.student.stat.marks <- c(19,18,19,17,15)
class2.student.psych.marks <- c(18,19,17,18,16)
class2.student.marks <- cbind(class2.student.stat.marks,
                              class2.student.psych.marks)

student.marks <- array(c(class1.student.marks,class2.student.marks),
                       dim=c(5,2,2))
student.marks

student.marks[2,2,2]     #Row number, Column number, Sheet number
student.marks[1:3,,]
student.marks[1:3,2,]