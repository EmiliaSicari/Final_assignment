##########################
##Preliminary steps: gathering, cleaning and merging dataframes
##########################

#setting working directory
getwd()
try(setwd("/Users/emiliasicari/Desktop/Third_assignment"), silent = TRUE)
try(setwd("/Users/rafalopezv/Dropbox/R/Third-assignment/"), silent = TRUE)

#loading packages 
library(Quandl)
library(rio)
library(ggplot2)
library(stargazer)
library(pander)
library(knitr)
library(corrplot)


# creating an object of the packages for citation purposes
packages <- c('devtools', 'repmis', 'Quandl', 'data.table', 'rio', 'ggplot2', 'stargazer', 'pander', 'corrplot', 'scales')
repmis::LoadandCite(packages, file = 'packages.bib')

# importing data on Singapore's economic growth, selecting only the time span of interest
URL <- "https://www.quandl.com/api/v3/datasets/ODA/SGP_NGDPPC.csv?api_key=zKGy91t7cY2TmfwbfAwe"
gdp.pc <- repmis::source_data(URL)
gdp.pc <- repmis::source_data(URL, header = TRUE, nrows=20, skip = 7)
#adding a new column, and inserting content 
gdp.pc["MY_NEW_COLUMN"] <- 2014:1995
#erasing a column
gdp.pc$`2015-12-31` <- NULL
#changing the names of the columns
names(gdp.pc) <- c("gdp per capita", "date")
#changing order of columns
gdp.pc[,c(2,1)]
#checking the class of the varibles
sapply(gdp.pc, class)

#importing data on Singapore's bottom 90% average income, selecting only the time span of interest
bottom <- read.csv("ObservationData_zqpldgb.csv", header = TRUE, skip = 20)
#erasing columns
bottom$Singapore <- NULL
bottom$Bottom.90..average.income <- NULL
bottom$Real.2010.Singapore.Dollars <- NULL
bottom$X1.1.1994.12.00.00.AM <- NULL
#adding a new column and inserting content
bottom["MY_NEW_COLUMN"] <- 1995:2009
#rename columns
names(bottom) <- c("bottom", "date")
#reorder columns
bottom[,c(2,1)]
#checking the class of the varibles
sapply(bottom, class)
#forecasrting the bottom 90% average income for the missing years (2010-2015) and creating a dataframe with the forecasted values
Forecast <- lm(bottom  ~ date, data = bottom)
116.7*2010+(-204924.2) #forcasted bottom 90% average income for 2010
116.7*2011+(-204924.2) #forcasted bottom 90% average income for 2011
116.7*2012+(-204924.2) #forcasted bottom 90% average income for 2012
116.7*2013+(-204924.2) #forcasted bottom 90% average income for 2013
116.7*2014+(-204924.2) #forcasted bottom 90% average income for 2014
116.7*2015+(-204924.2) #forcasted bottom 90% average income for 2015
new.bottom <- data.frame(date = c(2010, 2011, 2012, 2013, 2014, 2015), bottom = c(29642.8, 29759.5, 29876.2, 29992.9, 30109.6, 30226.3)) #creating a new dataframe with the forecastedvalues
new.bottom #visualising the new dataframe
#binding the new.bottom dataframe with the original bottom dataframe
bottom.complete <- rbind(bottom, new.bottom)

#importing data on Singapore's top 10% average income, selecting only the time span of interest
top <-read.csv("ObservationData_rblkfmd.csv", header = TRUE, skip = 20)
#erasing columns
top$Singapore <- NULL
top$Top.10..average.income <- NULL
top$Real.2010.Singapore.Dollars <- NULL
top$X1.1.1994.12.00.00.AM <- NULL
#adding a new column and inserting content
top["MY_NEW_COLUMN"] <- 1995:2009
#rename columns
names(top) <- c("top", "date")
#reorder columns
top[,c(2,1)]
#checking the class of the varibles
sapply(top, class)
#forecasrting the top 10% average income for the missing years (2010-2015) and creating a dataframe with the forecasted values
Forecast2 <- lm(top ~ date, data = top)
Forecast2
6312*2010-12476918  #forcasted top 10% average income for 2010
6312*2011-12476918  #forcasted top 10% average income for 2011
6312*2012-12476918  #forcasted top 10% average income for 2012
6312*2013-12476918  #forcasted top 10% average income for 2013
6312*2014-12476918  #forcasted top 10% average income for 2014
6312*2015-12476918  #forcasted top 10% average income for 2015
new.top <- data.frame(date = c(2010, 2011, 2012, 2013, 2014, 2015), top = c(210202, 216514, 222826, 229138, 235450, 241762)) #creating a new dataframe with the forecastedvalues
new.top #visualising the new dataframe
#binding the new.top dataframe with the original top dataframe
top.complete <- rbind(top, new.top)

#creating a new dataset showing the variation between the top 10% and bottom 90% average income over time, to measure inequality between 1995 and 2015
inequality.complete <- data.frame(date = c(1995:2015), inequality = c(top.complete$top / bottom.complete$bottom))

#Downloading data set for public transport utilisation (from 1995 to 2015)
a <- "https://data.gov.sg/dataset/7f0661dc-6e4f-460f-8e8c-3514c9a8cb6b/resource/552b8662-3cbc-48c0-9fbb-abdc07fb377a/download/public-transport-utilisation-average-public-transport-ridership.csv"
trans.ut <- repmis::source_data(a)

#Changing the name of the colums 
names(trans.ut) <- c("date","type","average.1000.day")

#Checking the class of the data
sapply(trans.ut, class)

# Subsetting the "trans.ut file" to make it compatible with the other data and foreseeing the merging process 
trans.ut.mrt <- data.frame(subset(trans.ut, type == "MRT"))
trans.ut.bus <- data.frame(subset(trans.ut, type == "Bus"))
trans.ut.lrt <- data.frame(subset(trans.ut, type == "LRT"))
trans.ut.taxi <- data.frame(subset(trans.ut, type == "Taxi"))

# Completing the missing data for the trans.ut.lrt data frame
trans.ut.lrt1 <- data.frame(date = c(1995,1996,1997,1998), type = c("LRT", "LRT","LRT", "LRT"), average.1000.day = c(0,0,0,0))

# Binding data sets: trans.ut.lrt and trans.ut.lrt1  
trans.ut.lrt2 <- rbind(trans.ut.lrt, trans.ut.lrt1)
trans.ut.lrt2
#Downloading data for car population (from 1965 to 2015)
b <- "https://data.gov.sg/dataset/e2673131-f79f-43e3-9579-c17cc25e1735/resource/31ca0cee-6d9e-453a-8b4f-376d37713a10/download/motor-vehicle-population-by-type-of-vehicle-end-of-period-annual.csv"
car.pop <- repmis::source_data(b)

#Changing the name of the colums
names(car.pop) <- c("date", "type", "number")

# Eliminating the years that are not compatible with the other data sets
car.pop1 <- data.frame(subset(car.pop, date > "1994"))
car.pop1 <- data.frame(subset(car.pop1, date < "2015"))

#Checking the class of the data
sapply(car.pop1, class)

#Transform the data of one of the columns that have been imported as characters
car.pop1 <- transform(car.pop1, number = as.numeric(number))

# Subsetting the "car.pop1 file" to make it compatible with the other data and foreseeing the merging process 
car.pop1.cars <- data.frame(subset(car.pop1, type == "Cars"))
car.pop1.rentalcars <- data.frame(subset(car.pop1, type == "Rental Cars"))
car.pop1.taxis <- data.frame(subset(car.pop1, type == "Taxis"))
car.pop1.buses <- data.frame(subset(car.pop1, type == "Buses"))
car.pop1.motorbikes <- data.frame(subset(car.pop1, type == "Motorcycles & Scooters"))
car.pop1.other <- data.frame(subset(car.pop1, type == "Goods & Other Vehicles"))

#changing name of the column "year" into "date"
names(car.pop1.rentalcars) <- c("date", "type", "number")
names(car.pop1.cars) <- c("date", "type", "number")
names(car.pop1.taxis) <- c("date", "type", "number")
names(car.pop1.buses) <- c("date", "type", "number")
names(car.pop1.motorbikes) <- c("date", "type", "number")
names(car.pop1.other) <- c("date", "type", "number")

#merging inequality and gdp per capita dataframes
gdp.ineq <- merge(gdp.pc, inequality.complete, by = "date")

#eliminating the extra year (2015) in order to proceed with merging with the other data frames
gdp.ineq1 <- data.frame(subset(gdp.ineq, date<"2015"))
bottom.complete <- data.frame(subset(bottom.complete, date<"2015"))
top.complete <- data.frame(subset(top.complete, date<"2015"))

#merging gdp.ineq dataframe with all the other dataframes, and cleaning meanwhile

#merging with cars and cleaning
dataframe1 <- merge (gdp.ineq1, car.pop1.cars, by ='date')
dataframe1$type <- NULL
names(dataframe1) <- c("date", "gdp.per.capita", "inequality", "cars")

#merging with rentalcars and cleaning
dataframe2 <- merge (dataframe1, car.pop1.rentalcars, by ='date')
dataframe2$type <- NULL
names(dataframe2) <- c("date", "gdp.per.capita", "inequality", "cars", "rentalcars")

#merging with taxis and cleaning
dataframe3 <- merge (dataframe2,car.pop1.taxis, by ='date')
dataframe3$type <- NULL
names(dataframe3) <- c("date", "gdp.per.capita", "inequality", "cars", "rentalcars", "taxis")

#merging with buses and cleaning
dataframe4 <- merge (dataframe3, car.pop1.buses, by ='date')
dataframe4$type <- NULL
names(dataframe4) <- c("date", "gdp.per.capita", "inequality", "cars", "rentalcars", "taxis", "buses")

#merging with motorbikes and cleaning
dataframe5 <- merge (dataframe4, car.pop1.motorbikes, by ='date')
dataframe5$type <- NULL
names(dataframe5) <- c("date", "gdp.per.capita", "inequality", "cars", "rentalcars", "taxis", "buses", "motorbikes")

#creating the almost final, complete dataframe and cleaning it
almost.complete.dataframe <- merge (dataframe5, car.pop1.other, by ='date')
almost.complete.dataframe$type <- NULL
names(almost.complete.dataframe) <- c("date", "gdp.per.capita", "inequality", "cars", "rentalcars", "taxis", "buses", "motorbikes", "other")

# Eliminating unnecessary colums of the data frames trans.ut.(x) and changing the names

#buses utilization
trans.ut.bus$type <- NULL
names(trans.ut.bus) <- c("date", "bus.u") 

#mrt utilization
trans.ut.mrt$type <- NULL
names(trans.ut.mrt) <- c("date", "mrt.u") 

#lrt utilization
trans.ut.lrt2$type <- NULL
names(trans.ut.lrt2) <- c("date", "lrt.u")

# Creating the very final data frame, inserting the missing data on utilization, as well as bottom 90% and top 10% average income
data.final1 <- merge (almost.complete.dataframe, trans.ut.bus, by ='date')
data.final2 <- merge (data.final1, trans.ut.mrt, by ='date')
data.final3 <- merge (data.final2, top.complete, by='date')
data.final4 <- merge (data.final3, bottom.complete, by='date')
data.final <-  merge (data.final4, trans.ut.lrt2, by ='date')

# Moving the columns
data.final <- data.final[,c(1,2,3,12,13,4,5,6,7,8,9,10,11,14)]
data.final

# Exporting the final data frame as csv file
rio::export(data.final, "final.data.frame.csv", col.names = TRUE)