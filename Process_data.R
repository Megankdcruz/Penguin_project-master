penguins_data<-read.delim("Penguin_data.txt", header=TRUE)
#delim is to read txt files as opposed to csv files 
#Load the tidyverse library 
library(tidyverse)
install.packages("tidyverse")
penguins<- read.table("data/penguin_data.txt", header = T)
glimpse(penguins)
