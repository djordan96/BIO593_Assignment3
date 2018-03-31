#Hypothesis 3
surveys <- read.csv("data/portal_data_joined.csv") #uploading csv
surveys <- read.csv("~/Projects/BIO593_Assignment3/data/portal_data_joined.csv") #uploading csv

library(dbplyr)
library(RSQLite)
library(tidyverse)

surveys_specplot<- surveys %>% 
  select(taxa, plot_type, species) %>%
  filter(taxa == "Rodent") %>% 
  filter(!is.na(taxa), !is.na(plot_type), !is.na(species)) %>%
  group_by(plot_type, species) %>%
  tally()


ggplot(data = surveys_specplot, aes(x = factor(-n), y = n, fill = species)) +
  geom_bar(stat="identity") +
  ylab("Counts") + xlab("Species") + 
  guides(fill = guide_legend(ncol = 3)) +
  facet_wrap(~ plot_type, scales = "free_x", drop = TRUE) +
  scale_fill_discrete(name="Species") +
  theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                     panel.grid.minor = element_blank(), axis.line = element_line(colour = "black")) +
  theme(
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank()) +
  theme(legend.position=c(0.85,0.25)) 



#stats
#factors: ind- Plot type, ind- Species ID, dep- abundance 
#assumptions 

#normality

#homogenity of variance

#2 way ANOVA 
anova(lm(data = surveys_specplot, n ~ plot_type * species))


# Total number of rodents in each plot over time
surveys_timeplot<- surveys %>% 
  select(taxa, plot_type, species, year) %>%
  filter(taxa == "Rodent") %>% 
  filter(!is.na(taxa), !is.na(plot_type), !is.na(species)) %>%
  group_by(plot_type, year) %>%
  tally()

ggplot(surveys_timeplot,aes(x=year, y=n, colour=plot_type))+
  ylab("Total number or rodents")+ xlab("Year") +
  geom_point()+
  geom_line(aes(group=plot_type))+
  scale_fill_discrete(name="Plot Type") +
  theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                     panel.grid.minor = element_blank(), axis.line = element_line(colour = "black")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
