#################
##figures
###############

# Setting working directory
try(setwd("/Users/emiliasicari/Desktop/Final_assignment/Presentation/"), silent = TRUE)


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

#creating the second figure: trend in inequality in number of times. 
INEQUALITY <- ggplot2::ggplot(data.final, aes(x=data.final$date, y=data.final$inequality)) + geom_line(aes(group=1), colour="#3399FF") + theme_classic()

#changing the name of the variables in the y axis
INEQUALITY <- INEQUALITY + labs(x = "years", y = "inequality")

#changing the colour of the background of the plot
INEQUALITY <- INEQUALITY + theme(panel.border = element_blank(),
                       panel.grid.major = element_blank(),
                       panel.grid.minor = element_blank(),
                       axis.line.x = element_line(size = 0.25, linetype = "solid",
                                                  colour = "black"), 
                       axis.line.y = element_line(size = 0.25, linetype = "solid",
                                                  colour = "black"))
INEQUALITY

# Creating first figure: trend in gdp, bottom 90% and top 10% average income
IV <- ggplot2::ggplot(data.final, aes(x= date)) +
  geom_line(aes(y=data.final$top, color= "top")) +
  geom_line(aes(y=data.final$bottom, color = "bottom")) + 
  geom_line (aes(y=data.final$gdp.per.capita, color = "gdp.per.capita")) +
  theme_light()

#changing the name of the variables in the axis
IV <- IV + labs(x = "years", y = NULL)

#changing the position of the legend 
IV <- IV + theme(legend.position="bottom")

#changing the name of title and labels of legend
IV <- IV + scale_colour_discrete(name= NULL,
                                       breaks=c("bottom", "gdp.per.capita", "top"),
                                       labels=c("Bottom 90% average income", "Gdp per capita",
                                                "Top 10% average income"))

#changing the colour of the background of the plot
IV <- IV + theme(panel.border = element_blank(),
                       panel.grid.major = element_blank(),
                       panel.grid.minor = element_blank(),
                       axis.line.x = element_line(size = 0.25, linetype = "solid",
                                                  colour = "black"), 
                       axis.line.y = element_line(size = 0.25, linetype = "solid", 
                                                  colour = "black"))
IV

#Creating the fourth figure: trend in vehicles utilization           
PT <- ggplot2::ggplot(data.final, aes(x=data.final$date)) + 
  geom_line(aes(y=data.final$bus.u, color="buses")) + 
  geom_line(aes(y=data.final$mrt.u, color="MRT")) + 
  geom_line(aes(y=data.final$lrt.u, color="LRT")) + theme_light()

#changing the name of the variables in the y axis
PT <- PT + labs(x = "years", y = NULL)

#changing the colour of the background of the plot and making axis appear
PT <- PT + theme(panel.border = element_blank(),
                       panel.grid.major = element_blank(),
                       panel.grid.minor = element_blank(),
                       axis.line.x = element_line(size = 0.25, linetype = "solid",
                                                  colour = "black"), 
                       axis.line.y = element_line(size = 0.25, linetype = "solid", 
                                                  colour = "black"))

##changing the position of the legend 
PT <- PT + theme(legend.position="bottom")

#changing the name of title and labels of legend
PT <- PT + scale_colour_discrete(name= NULL,
                                       breaks=c("buses", "LRT", "MRT"),
                                       labels=c("buses", "MRT", "LRT"))

PT

POPULATION <- ggplot2::ggplot(data.final, aes(x=data.final$date, y=data.final$population)) + geom_line(aes(group=1), colour="#3399FF") + theme_classic()

#changing the name of the variables in the y axis
POPULATION <- POPULATION + labs(x = "years", y = "inequality")

#changing the colour of the background of the plot
POPULATION <- POPULATION + theme(panel.border = element_blank(),
                                 panel.grid.major = element_blank(),
                                 panel.grid.minor = element_blank(),
                                 axis.line.x = element_line(size = 0.25, linetype = "solid",
                                                            colour = "black"), 
                                 axis.line.y = element_line(size = 0.25, linetype = "solid",
                                                            colour = "black"))
POPULATION

