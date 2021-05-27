#named vectors

charlie <- 1:5
charlie

#give names 
names(charlie) <- c("a", "b" , "c", "d" , "e")
charlie
charlie["d"]
charlie[4]

#clear names 
names(charlie) <- NULL
charlie

#---------------------------------
temp.vec <- rep(c("a" , "B", "zZ"), each = 3)
temp.vec

Bravo <- matrix(temp.vec, 3, 3)
Bravo
