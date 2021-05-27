

MyFirstVector <- c(3,45,56,732)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

V2 <- c(3L, 12L , 243L, 0L)
is.numeric(V2)
is.integer(V2)
is.double(V2)

seq() #sequence - like ':'
rep() #replicate

seq(1,15)
1:15

seq(1,15,2)
d  <- rep(3,50)
x <- c(80,20)
y <- rep(x, 10)
y
