?read.csv()

#method 1: Select the File Manually 

read.csv(choose.files())

#Method 2: Set WD and Read data
getwd()
#Windows:
setwd("C:\\Users\\ziyan\\OneDrive\\Desktop\\R programming A-Z Udemy\\Data Frames")

stats <- read.csv("DemographicData.csv")
stats

#--------------------------------- Exploring data
stats
nrow(stats)
ncol(stats)
head(stats)
tail(stats)
str(stats)     #str means structure ,runif 
summary(stats)

#-------------------------------------- Using $ sign
stats
head(stats)
stats$Internet.users
stats$Country.Name

#---------------------------------------- Basic Operations with a DF
stats[1:10,] #subsetting
stats[3:9,]
stats[c(4,100),]
#remember how the [] work
is.data.frame(stats[1,]) #no need for drop=F usually true for rows
is.data.frame(stats[,1]) #column need drop=F
is.data.frame(stats[,1,drop=F])

#multiply columns
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

#add column
head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
stats
#test of knowledge
stats$xyz <- 1:4 #recycling ???
head(stats, n =12)
#removing a column
head(stats)
stats$MyCalc <- NULL

#--------------------------------Filtering Data Frames
head(stats)
stats$Internet.users <2 #this will compare every number and return TRUE OR FALSE
filter <- stats$Internet.users < 2
stats[filter,] # will only display TRUE values, FALSE values will not be displayed


stats[stats$Birth.rate >40 & stats$Internet.users < 2,]
stats[stats$Income.Group == "High income" , ]
levels(stats$Income.Group)

stats[stats$Country.Name == "Malta" , ]


#------------------------------------ Introduction to qplot()
#install packages("ggplot2)
libray(ggplot2)

qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate) 
qplot(data=stats, x=Income.Group, y=Birth.rate ,size=I(3)) 
qplot(data=stats, x=Income.Group, y=Birth.rate ,size=I(3), colour=I("blue")) 

#------------------------------- Visualizing what we need
qplot(data= stats, x= Internet.users, y=Birth.rate)
qplot(data= stats, x= Internet.users, y=Birth.rate, size=I(4))
qplot(data= stats, x= Internet.users, y=Birth.rate,colour = I("red"), size=I(4))
qplot(data= stats, x= Internet.users, y=Birth.rate, colour = Income.Group, size=I(4))
qplot(data= stats, x= Internet.users, y=Birth.rate)


#------------------------- Creating Data Frames
#Execute below code to generate three new vectors
Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")

mydf <- data.frame(Country=Countries_2012_Dataset,Code= Codes_2012_Dataset,
                   Region=Regions_2012_Dataset)
head(mydf)
#colnames(mydf) <- c("Country" , "Code", "Region") 

tail(mydf)
summary(mydf)
head(stats)
head(mydf)
#remember the "" 
merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")
head(merged)
merged$Country <- NULL
str(merged)

#--------------------------- Visualizing With new Split
qplot(data = merged, x= Internet.users, y = Birth.rate)
#1 Shapes
qplot(data = merged, x= Internet.users, y = Birth.rate , colour = Regions_2012_Dataset
      , shape = I(23), size= I(5))
#2 Transparency , use alpha = I()
qplot(data = merged, x= Internet.users, y = Birth.rate , colour = Regions_2012_Dataset
      , shape = I(19), size= I(5), alpha = I(0.1))


#3 Title . use main = 
qplot(data = merged, x= Internet.users, y = Birth.rate , colour = Regions_2012_Dataset
      , shape = I(23), size= I(5), main = "Birth Rate vs Internet Users")







