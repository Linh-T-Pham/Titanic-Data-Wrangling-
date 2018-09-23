tl <- read.csv('Titanic_Original .csv')
View(tl)

library(dplyr)
library(tidyr)
tl$embarked <- sub("^$", "S", tl$embarked)

# Age
is.na(tl$age)
tl$age[which(is.na(tl$age))] <-mean(tl$age, na.rm = TRUE)
tl$age

Anther way to replace NA with mean of column "age"

tl_titanic_replace <- tl %>%
mutate(replace_mean_age  = ifelse(is.na(age), average_missing[1], age)
         
tl %>% summarise(Min = min(age, na.rm=TRUE),
Median = median(age, na.rm=TRUE),
Mean = mean(age, na.rm=TRUE),
Max = max(age, na.rm=TRUE))                
         
# lifeboat
tl$boat <-sub("^$",NA,tl$boat) 
         
#Cabin
I don't think to fill out the missing value in Cabin column with a value
Missing value here means the cabin number which could not be identified
         
tl <- tl %>% mutate(has_cabin_number = ifelse(!is.na(cabin),1,0))
         
         