penguins_data<-read.delim("Penguin_data.txt", header=TRUE)
#delim is to read txt files as opposed to csv files 
#Load the tidyverse library 
library(tidyverse)
install.packages("tidyverse")
penguins<- read.table("data/penguin_data.txt", header = T)
glimpse(penguins)
#run linear regression
model1<- lm(body_mass_g~flipper_length_mm, data = penguins)
summary(model1)
#create a plot in ggplot2:
ggplot(penguins,aes(x=flipper_length_mm,y=body_mass_g, colour=species))+geom_point()+stat_smooth(method="lm")
#save the plot in your/figs folder
ggsave("figs/1_flipper_bodymass_regression.png")
#this saves the last plot that was run!
#this is another comment
