# Practice-programming-exercises-for-R | Alan Berger
# First Programming exercise
# Roland Smith 15 June 2021

# Task 1
# an R function that would take as its input an Excel column name
# (as a character variable) and output the corresponding column number.

getwd()

#Import dummy .csv file to play with
testtable <- read.csv("/Users/rolsmith/Documents/R-Learning/Coursera/additional-coursera-exercises/R Programming Test Table.csv")
testtable

colnames(testtable)

#simple colnames call

call.coll <- function(x,...) {
  if (colnames(testtable)==(x)) print(testtable[,(x)])
  else (print("fail"))
}
call.coll("z")

#trialling with which

which(colnames(testtable)=="d")

colnameToNumber <- function(colname) {
  for (colnames(testtable)==colname) {
    if { ((colname(testtable)==x)!=FALSE
        colnumber <- which((colname(testtable)==x)==TRUE)
   } else {
    print("no match for colname")
   }
  }
  return(colnumber)
}
  
#Testing *letters*  

