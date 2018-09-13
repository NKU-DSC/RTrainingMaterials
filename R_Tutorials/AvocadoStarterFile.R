#Data Science Club Week 3

#Packages we might want----
library(tidyverse)
library(lubridate)
library(magrittr)
library(ggplot)
library(plotly)
library(readr)

#Read in data-----
avocado <- read_csv("R_Tutorials/dataSets/avocado.csv", col_types = cols(X1 = col_skip()))

#Rename Columns 
#I know from the data dictionary proviced that:
# 4046 = small
# 4225 = large
# 4770 = xl
#use rename function from dplyr to reanme the columns, many other ways to do this 

#Answer 1-----
avocado = rename(avocado, small = '4046', large = '4225', xlarge= '4770')


#Use lubridate package combined with tidyverse to create a month column----- 
#Lubridate is used to easily work with dates
# we will be using the function month from lubridate and the mutate function from dplyr to create a new column
#Store the new data set back into the original

#Answer 2------
avocado = avocado %>% 
  mutate(month = month(avocado$Date))



ggplot(avocado, )

#Before we do any visualizations lets find some basic insights
#How many rows are there? Are there any nulls?

nrow(avocado)
sum(is.na(avocado))
#Good there aren't any nulls! 

#what dates do we have?

min(avocado$Date)
max(avocado$Date)
# we have all of 2015, but only till march in 2018. This is good to know if we are doing yearly analysis we might want to get rid of 2018

#What types of avocados are there?
unique(avocado$type)
#Conventional and organic

#How many regions are there?
length(unique(avocado$region))
unique(avocado$region)
#54

#uh oh there seems to be a value for total US... we might want to remove this 
#Let's use a filter! 

avocadoNoTotal = avocado %>% 
  filter(region != "TotalUS")
#How many regions are there now?
length(unique(avocadoNoTotal$region))
#53! Good its gone!

#What is the highest price avocados were sold at?

max(avocadoNoTotal$AveragePrice)
min(avocadoNoTotal$AveragePrice) 

LowAvocadoPrices = avocadoNoTotal %>%
  filter( AveragePrice <= 1)

HighAvocadoPrices = avocadoNoTotal %>%
  filter(AveragePrice >=3)

#ok we could go on forever with data understanding
#Let's look at some groupings and some visualizations

#I want to look specifically at Califonia Sales

California = avocadoNoTotal %>% 
  filter(region == "California")

ggplot(California, aes(Date, AveragePrice, color = type))+geom_point()+geom_line()

#Now I want to look at a box plot of organic sales
ggplot(avocadoNoTotal, aes(type, AveragePrice))+geom_boxplot()

#plotly

#I want to look at the amount sold by each region and the average price 
Regions = avocadoNoTotal %>%
  filter(year == 2018) %>% 
  group_by(region) %>%
  summarize(AmountSold = sum(`Total Volume`), MeanPrice = mean(AveragePrice)) %>% 

#Store the plot in a variable 
p= ggplot(Regions, aes(region, AmountSold, fill = MeanPrice))+geom_bar(stat= 'identity')
#Use ggplotly the function to make it interactive 

ggplotly(p)


#There are an infine amount of visualizations you could make! Try makins some by grouping by region, or type, or year to generate new insights



