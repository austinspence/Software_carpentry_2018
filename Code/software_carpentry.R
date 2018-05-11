#### Software Carpentry 2018
## May 10th, 2018
## Austin Spence

setwd("~/Desktop")

jesus <- read.csv("data/software.csv")


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

###### Creating and using functions

f_to_k <- function(temp){
  kelvin <- (temp-32)*(5/9) + 273.15
  return(kelvin)
}

k_to_c <- function(temp){
  cel <- (temp-273.15)
  return(cel)
}

f_to_k(temp = 100)
f_to_k(-459.6699999999999)

k_to_c(0)

k_to_c(f_to_k(-459.6699999999999))


#### Plot in some ggplot :(

plot(jesus$gdpPercap, jesus$lifeExp)

ggplot(data = jesus, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point()

ggplot(data = jesus, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  scale_x_log10() +
  geom_point() + 
  geom_smooth(method = "lm") +
  theme_classic() +
  ggtitle("Effects of Per Capita GDP on Life Expectancy") +
  xlab("GDP per Capita") +
  ylab("Life Expectancy (Years)")

ggsave(file = "results/life_expectancy.png")

# faceting

