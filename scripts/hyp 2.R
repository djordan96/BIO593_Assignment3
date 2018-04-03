hypothesis1 <- surveys %>% 
  select(taxa, sex, weight, plot_type) %>%
  filter(!is.na(weight)) %>% 
  filter(!is.na(sex))

hyp1 <- hypothesis1 %>% 
  group_by(taxa, sex, plot_type) %>% 
  summarize(avg_weight=mean(weight), sem=sd(weight)/sqrt(length(weight)))

ggplot(data=hyp1, aes(x=plot_type, y=avg_weight, fill=sex)) +
  geom_bar(stat = "identity",aes(fill = sex),
           position = position_dodge(width = 0.9)) +
  ylab("Mean Weight (g)") + xlab("Plot Type")+
  geom_errorbar(aes(ymin=avg_weight+sem, ymax=avg_weight-sem), position=position_dodge(0.9),
                width=0.2,
                size=0.25)
