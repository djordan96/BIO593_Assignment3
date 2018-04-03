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
anova(lm(n ~ plot_type * species, surveys_specplot))

tbl = table(surveys$plot_type, surveys$species)
tbl

chisqsp <- chisq.test(tbl)
install.packages("devtools")
devtools::install_github("taiyun/corrplot", build_vignettes = TRUE)
install.packages("corrplot")
library(corrplot )

round(chisqsp$residuals, 3)
corrplot(chisqsp$residuals, is.corr=FALSE)

# Total number of rodents in each plot over time
surveys_timeplot<- surveys %>% 
  select(taxa, plot_type, species, year) %>%
  filter(taxa == "Rodent") %>% 
  filter(!is.na(taxa), !is.na(plot_type), !is.na(species)) %>%
  group_by(plot_type, year) %>%
  tally()

ggplot(surveys_timeplot,aes(x=year, y=n, color = plot_type))+
  ylab("Total number of rodents")+ xlab("Year") + labs(color ="Plot Type") +
  geom_point()+
  geom_line(aes(group=plot_type))+
  ylim(0,1200) +
  theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                     panel.grid.minor = element_blank(), axis.line = element_line(colour = "black")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

install.packages("nlme")
library(nlme)
gls?

glstime <- gls(n ~ year*plot_type, data = surveys_timeplot)
plot(glstime)
summary(glstime)

tbl2 = table(surveys$plot_type, surveys$year)
tbl2

summary (tbl2)
lmtbl2 <- lm(year~plot_type, data = surveys_timeplot)
summary(lmtbl2)
plot(lmtbl2)


chisqsp2 <- chisq.test(tbl2)
round(chisqsp2$residuals, 3)
corrplot(chisqsp2$residuals, is.corr=FALSE)

##genus

surveys_genplot<- surveys %>% 
  select(taxa, plot_type, genus) %>%
  filter(taxa == "Rodent") %>% 
  filter(!is.na(taxa), !is.na(plot_type), !is.na(genus)) %>%
  group_by(plot_type, genus) %>%
  tally()


ggplot(data = surveys_genplot, aes(x = factor(-n), y = n, fill = genus)) +
  geom_bar(stat="identity") +
  ylab("Counts") + xlab("Genus") + 
  guides(fill = guide_legend(ncol = 3)) +
  facet_wrap(~ plot_type, scales = "free_x", drop = TRUE) +
  scale_fill_discrete(name="Genus") +
  theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                     panel.grid.minor = element_blank(), axis.line = element_line(colour = "black")) +
  theme(
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank()) +
  theme(legend.position=c(0.85,0.25)) 

tbl2 = table(surveys$plot_type, surveys$genus)
tbl2

chisqsp <- chisq.test(tbl2)
install.packages("devtools")
devtools::install_github("taiyun/corrplot", build_vignettes = TRUE)
install.packages("corrplot")
library(corrplot)

round(chisqsp2$residuals, 3)
corrplot(chisqsp2$residuals, is.corr=FALSE)
