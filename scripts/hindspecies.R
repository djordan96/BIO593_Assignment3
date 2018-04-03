hindspecies <- surveys %>% 
  select(taxa, species_id, hindfoot_length) %>% 
  filter(!is.na(hindfoot_length)) %>% 
  filter(!is.na(species_id))

species_hind <- hindspecies %>% 
  group_by(species_id) %>% 
  summarize(avg_hind=mean(hindfoot_length), sem=sd(hindfoot_length)/sqrt(length(hindfoot_length))) 

ggplot(data=species_hind, aes(x=species_id, y=avg_hind))+
  geom_bar(stat="identity",
           position = position_dodge(width = 0.9)) +
  ylab("Average Hindfoot Length (cm)") + xlab("Species ID")+
  geom_errorbar(aes(ymin=avg_hind+sem, ymax=avg_hind-sem),position=position_dodge(0.75))
                
