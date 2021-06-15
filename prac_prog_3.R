# Practice-programming-exercises-for-R | Alan Berger
# Third Programming exercise
# Roland Smith 15 June 2021

#First step - creating 'isItPrime'

isItPrimeV1 <- function (n){
  
  n.int <- as.integer(n)
  if(!(n.int == n)) stop("n is not an integer")
  if(n < 1) stop("n is not positive")
  if(n > 1000000) stop("n is > a million")
  if(n == 1) return(FALSE)
  if(n == 2) return(TRUE)
  
  poss.factors <- c(2:n-1)
  mods <- rep(0,length(poss.factors))
  
  for (i in 2:length(poss.factors)) {
    mods <- poss.factors[i]
    if (n%%poss.factors[i]==0) {
      return(FALSE)
    } else {
      return(TRUE) 
    }
  }
}

isItPrimeV1(16)
isItPrimeV1(13)
isItPrimeV1(19)

n=997
mods

isItPrime(997)
isItPrime(2^17 - 1)

#Alternate method - 'isItPrime'

isItPrimeV2 <- function (n){
  
  n.int <- as.integer(n)
  if(!(n.int == n)) stop("n is not an integer")
  if(n < 1) stop("n is not positive")
  if(n > 1000000) stop("n is > a million")
  if(n == 1) return(FALSE)
  if(n == 2) return(TRUE)

  for (i in 2:(n-1)) {
    if (n%%i==0) {
      return(FALSE)
    } else {
      return(TRUE) 
    }
  }
}

isItPrimeV2(16)
isItPrimeV2(13)
isItPrimeV2(19)


