#################
##figures
###############

# Setting working directory
try(setwd("/Users/emiliasicari/Desktop/Final_assignment/"), silent = TRUE)


#loading packages
library(ggplot2)
library(scales)

#creating the second figure: trend in inequality in number of times. 
CARS <- ggplot2::ggplot(data.final, aes(x=data.final$date, y=data.final$cars)) + geom_line(aes(group=1), colour="#3399FF") + theme_classic()

#changing the name of the variables in the y axis
CARS <- CARS + labs(x = "years", y = "cars")

#changing the colour of the background of the plot
CARS <- CARS + theme(panel.border = element_blank(),
                       panel.grid.major = element_blank(),
                       panel.grid.minor = element_blank(),
                       axis.line.x = element_line(size = 0.25, linetype = "solid",
                                                  colour = "black"), 
                       axis.line.y = element_line(size = 0.25, linetype = "solid",
                                                  colour = "black"))
#changing the scale of the y axis
CARS <- CARS + scale_y_continuous(name= NULL, labels = comma)

CARS
