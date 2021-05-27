#Test the law of large Numbers for N randomly
#normal distributed numbers with mean = 0, stdev=1:
#
#Create an R script that will count how many of these
#numbers fall between -1 and 1 and divide by the 
#total quantity of N
#
#You know that E(X) = 68.2%
#check that Mean(Xn) -> E(X) as you rerun your script
#while increasing N

#make sample size 100
N <- 100
#initialize the counter to be 0
counter <- 0
#create a for loop
for(i in rnorm(N)){
  if(i >= -1 & i <= 1 ){
    counter <- counter + 1
  }
}
answer <- counter/N
answer

