myplot <- function(data,rows){
  Data <- data[rows,,drop= F]
  matplot(t(Data), type= "b", pch= 15:18, col= c(1:4,6))
  legend("bottomleft", inset= 0.01, legend=Players[rows], col=c(1:4,6) ,pch= 15:18 , horiz=F)
}

myplot(Games)

#Salary
myplot(Salary)
myplot(Salary / Games)
myplot(Salary / FieldGoal)

#In-game Metrics
myplot(MinutesPlayed)
myplot(Points)

#In-Game Metrics Normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts) #accuracy of game
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)

#Interesting Observation
myplot(FieldGoals/MinutesPlayed)

#Time is valuable
myplot(FieldGoals/MinutesPlayed)

#PLayer Style
myplot(Points/FieldGoals)




