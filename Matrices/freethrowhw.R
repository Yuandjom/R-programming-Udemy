#creation of matrix for freethrows using matrix()
FreeThrows <- c(KobeBryant_FT,JoeJohnson_FT,LeBronJames_FT,CarmeloAnthony_FT,DwightHoward_FT,ChrisBosh_FT,ChrisPaul_FT,KevinDurant_FT,DerrickRose_FT,DwayneWade_FT)
FreeThrowsMatrix <- matrix(FreeThrows,10,10)
colnames(FreeThrowsMatrix) <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")
FreeThrowsMatrix
rownames(FreeThrowsMatrix) <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")
FreeThrowMatrix.confirm <- t(FreeThrowsMatrix)
FreeThrowMatrix.confirm

#creation of matrix for freethrowattempts using rbind()
FreeThrowsAttempt <- rbind(KobeBryant_FTA,JoeJohnson_FTA,LeBronJames_FTA,CarmeloAnthony_FTA,DwightHoward_FTA,ChrisBosh_FTA,ChrisPaul_FTA,KevinDurant_FTA,DerrickRose_FTA,DwayneWade_FTA)
#CHANGE THE NAME FOR ROW 
rownames(FreeThrowsAttempt) <-c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")
#Changet the name for the column
colnames(FreeThrowsAttempt) <-c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")
FreeThrowsAttempt

#plot the data on the graph 
myplot <- function(data,rows){
  Data <- data[rows,,drop= F]
  matplot(t(Data), type= "b", pch= 15:18, col= c(1:4,6))
  legend("bottomleft", inset= 0.01, legend=Players[rows], col=c(1:4,6) ,pch= 15:18 , horiz=F)
}

myplot(FreeThrowMatrix.confirm)
#free throw attempts/ Game
myplot(FreeThrowsAttempt/Games)

#accuracy of the throws
myplot(FreeThrowMatrix.confirm/FreeThrowsAttempt)


