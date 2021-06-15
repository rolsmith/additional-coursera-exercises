# Practice-programming-exercises-for-R | Alan Berger
# Second Programming exercise
# Roland Smith 15 June 2021

rm(list=ls())
ls()

# We are given a p-value
# denoted by pval, (a number between 0 and 1)
# and we want to convert it  to a value having 3 significant digits
# (specifically, we want the corresponding character string).

pval_To_3Sig_Digits <- function(pval) {
  if (!is.numeric(pval)) stop("pval is not numeric")
  if(pval < 0 || pval > 1) stop("pval not between 0 and 1")
  if (pval< 0.00001) {
    pval.string <- ("p < 0.00001")
  } else if (pval < 0.0001) {
    pval.string <- as.character(round(pval,digits=7))
  } else if (pval < 0.001) {
    pval.string <- as.character(round(pval,digits=6))
  } else if (pval < 0.01) {
    pval.string <- as.character(round(pval,digits=5))
  } else if (pval < 0.1) {
    pval.string <- as.character(round(pval,digits=4))
  } else {
    pval.string <- as.character(round(pval,digits=3))
  }
    return(pval.string)
}  
pval_To_3Sig_Digits(1.0)
pval_To_3Sig_Digits(0.123456)
pval_To_3Sig_Digits(0.0123456)
pval_To_3Sig_Digits(0.00123456)
pval_To_3Sig_Digits(0.000123456)
pval_To_3Sig_Digits(0.0000123456)
pval_To_3Sig_Digits(0.00001)
pval_To_3Sig_Digits(0.00000999)
pval_To_3Sig_Digits(0)
