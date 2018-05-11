#### Software Carpentry 2018
## May 10th, 2018
## Austin Spence

setwd("~/Desktop")

jesus <- read.csv("software.csv")


## MAKE SOME CATS
cats <- data.frame(coat = c("red", "blue", "green"),
                   mass = c(5, 17, 0.3), 
                   string = c(1, 0, 1))
cats
cats[,2]
cats$mass


#### Load in some REAL data
jesus <- read.csv("/Users/austinspence/Desktop/Software_Carpentry_2018/Data/software.csv")

# Make it only Afghanistan
afghanistan <- jesus[which(jesus$country == "Afghanistan"),]

afghanistan$gdp <- afghanistan$pop*afghanistan$gdpPercap #make this a variable

write.csv(x = afghanistan, file = "./Results/afghanistan.csv") #write a dumb csv

#wooowww


###############################################################################################
# Day 2 Software Carpentry!
# May 11, 2018

## Conditional Statements
library(dplyr)
library(ggplot2)

number <- 100


if(number > 100){
  print("greather than 100")
} else{
  print("less than 100")
}
print("done yo")







