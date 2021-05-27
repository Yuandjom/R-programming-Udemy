
x <- c("a" , "b" , "c", "d" , "e")
x
x[c(1,5)]
x[1]

Games
Games[1:3, 6:10] #this is a matrix 
Games[c(1,10),] #this is a matrix
Games[,c("2008", "2009")]
Games[1,] #this is a vector 
Games[1,5] #this is a vector 

#to make back into a matrix
Games[1,,drop=F]
