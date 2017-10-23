library(haven)
library(foreign)
cities_data <- read_dta("C:/Users/Hp/Downloads/27901-0001-Data.dta")
View(cities_data)

#variables
city = cities_data$AREA
#Economy variables
jobs = cities_data$V1_1
city_expensive = cities_data$V1_2


#Safety variables
night_safety = cities_data$V4_1

water = cities_data$V5_1

install.packages("dplyr")
library(dplyr)
library(ggplot2)

#Jobs in a City
jobslab <- factor(jobs,
                  levels = c(1,2, 3, 4, 5, 8,9),
                  labels = c("Strongly Agree", "Agree", "Neither", "Disagree", "Strongly Disagree",
                             "Don't Know", "Refusal"))
ggplot(data=cities_data) + aes(x=city, fill=factor(jobslab)) + geom_histogram() + ggtitle("Enough Jobs in My City") + scale_fill_discrete(name = "Jobs")
ggplot(data=cities_data) + aes(x=city, fill=factor(jobslab)) + geom_bar(position = "dodge") + ggtitle("Enough Jobs in My City") + scale_fill_discrete(name = "Jobs")

#Cost of Living
costlab <- factor(city_expensive,
                  levels = c(1,2, 3, 4, 5, 8,9),
                  labels = c("Strongly Agree", "Agree", "Neither", "Disagree", "Strongly Disagree",
                             "Don't Know", "Refusal"))
ggplot(data=cities_data) + aes(x=city, fill=factor(costlab)) + geom_histogram() + ggtitle("High Living Expenses") + scale_fill_discrete(name = "High Expenses")
ggplot(data=cities_data) + aes(x=city, fill=factor(costlab)) + geom_bar(position = "dodge") + ggtitle("High Living Expenses") + scale_fill_discrete(name = "High Expenses")

#Safety 
night_safetylab <- factor(night_safety,
                  levels = c(1,2, 3, 4, 5, 8,9),
                  labels = c("Strongly Agree", "Agree", "Neither", "Disagree", "Strongly Disagree",
                             "Don't Know", "Refusal"))
ggplot(data=cities_data) + aes(x=city, fill=factor(night_safetylab)) + geom_histogram() + ggtitle("Night Safety") + scale_fill_discrete(name = "Safety")
ggplot(data=cities_data) + aes(x=city, fill=factor(night_safetylab)) + geom_bar(position = "dodge") + ggtitle("Night Safety") + scale_fill_discrete(name = "Safety")

#drinking water
waterlab <- factor(water,
                          levels = c(1,2, 3, 4, 5, 8,9),
                          labels = c("Strongly Agree", "Agree", "Neither", "Disagree", "Strongly Disagree",
                                     "Don't Know", "Refusal"))
ggplot(data=cities_data) + aes(x=city, fill=factor(waterlab)) + geom_histogram() + ggtitle("Do You Feel Safe Drinking Publicly Provided Water") + scale_fill_discrete(name = "Water Safety")
ggplot(data=cities_data) + aes(x=city, fill=factor(waterlab)) + geom_bar(position = "dodge") + ggtitle("Do You Feel Safe Drinking Publicly Provided Water") + scale_fill_discrete(name = "Water Safety")


Happylab <- factor(cities_data$V11,
                   levels = c(1,2, 3, 4, 5, 8,9),
                   labels = c("Very Happy", "Somewhat Happy", "Neither", "Not Very Happy", "Not Happy At All",
                              "Don't Know", "Refusal"))
ggplot(data=cities_data) + aes(x=city, fill=factor(Happylab)) + geom_histogram() + ggtitle("How Happy Are You Right Now?") + scale_fill_discrete(name = "Happiness")
ggplot(data=cities_data) + aes(x=city, fill=factor(Happylab)) + geom_bar(position = "dodge") + ggtitle("How Happy Are You Right Now?") + scale_fill_discrete(name = "Happiness")




