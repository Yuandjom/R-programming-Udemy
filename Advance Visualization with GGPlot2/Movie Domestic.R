#check the working directory then set it to current directory
getwd()
setwd()

#import the read after checking 
movies <- read.csv("Homework Data.csv")
#check the first 6 elements
head(movies)
#need to filter the Genre column and create a new dataframe
filterGenre <- (movies$Genre == "action") | (movies$Genre == "adventure") | (movies$Genre == "animation")| (movies$Genre == "comedy")| (movies$Genre == "drama")
#but this return only True and False values ??? this is bc there is a needed movies[ , ] , the comma is needed
movies[filterGenre,]
#need to filter the Studio column as only some values are needed
filterStudio <- (movies$Studio == "Buena Vista Studios") | (movies$Studio== "WB") | (movies$Studio== "Fox") | (movies$Studio== "Universal") | (movies$Studio=="Sony") | (movies$Studio== "Paramount Pictures")

#combine the filtered Movies
filteredMovies <- movies[filterGenre & filterStudio , ]
str(filteredMovies)
#use summary or structure to obtain the name of the header
mov <- ggplot(data = filteredMovies, aes(x = Genre, y = Gross...US ))
str(mov)

v <- mov+ geom_jitter(aes(size=Budget...mill., colour = Studio)) + geom_boxplot(alpha=0.7, outlier.color = NA) 
#non-data ink

v <- v + xlab("Genre") + ylab("Gross % US") + ggtitle("Domestic Gross % by Genre")

v
#theme 
v <- v +
  theme(axis.title.x = element_text(colour="Blue", size= 20),
        axis.title.y = element_text(colour="DarkGreen", size = 20),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size = 20),
        
        plot.title = element_text(size=40),
        legend.title = element_text(size=20) , 
        legend.text = element_text(size=20)
        )
v
