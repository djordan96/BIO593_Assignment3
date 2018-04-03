download.file("https://ndownloader.figshare.com/files/2292169" , "data/portal_data_joined.csv") 
surveys <- read.csv("data/portal_data_joined.csv", header=TRUE, na.strings = c("","NA"))
library(tidyverse)
library(dbplyr)
library(RSQLite)

  

#Hindfoot Length v Weight				
weighthind <- surveys %>% 
  select(taxa, species_id, hindfoot_length, weight) %>% 
  filter(!is.na(hindfoot_length)) %>% 
  filter(!is.na(weight))

whind <- weighthind %>% 
  group_by(taxa, species_id, hindfoot_length) %>% 
  summarize(avg_weight=mean(weight), sem=sd(weight)/sqrt(length(weight))) %>% 
  filter(!is.na(sem))

ggplot(data=whind, aes(x=hindfoot_length, y=avg_weight)) +
  geom_point(stat = "identity",
           position = "identity") +
  theme_minimal()+
     ylab("Mean Weight (g)") + xlab("Hindfoot Length (cm)")+
  geom_errorbar(aes(ymin=avg_weight+sem, ymax=avg_weight-sem))
  
