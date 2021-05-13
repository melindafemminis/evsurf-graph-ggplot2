# This R script is to replicate the graph created for the cours Visualisation 
# et analyse de données géographiques given by C. Kaiser at UNIL. 
# Code developped by M. Femminis, SA2021

library(tidyverse)
library(ggplot2)
library(dplyr)

input_file = "data/surf_habitant.csv"

# Import data
data_ofs = read_delim(input_file, delim=",")

# Create a new variable based on the total evolution of surfHab
data_ofs = data_ofs %>%
  group_by(canton) %>% 
  mutate(diff = surfHab[match('2013-18', year)] - 
           surfHab[match("1979-85", year)], 
         surfEv = match(sign(diff), c(-1, 0, 1)), diff = NULL)

# Create base graph 
p = ggplot(data = data_ofs,
           mapping = aes(x = year, y = surfHab, colour = as.factor(surfEv)))

p + geom_point(size = 2, stroke = 0, shape = 16, alpha = 0.5, show.legend = FALSE) + 
  geom_line(group = 1) +
  # Add legend and change labels to something easier to understand
  scale_color_discrete(name="Évolution de 1979-85 à 2013-18: ",
                       labels=c("Négative","Positive", "Unchanged")) +  
  # Add titles 
  labs(x = "Années", 
       y = "Surface d'habitat et d'infrastructure par habitant [m²]", 
       title = "Évolution de la surface d'habitat et d'infrastructure par habitant", 
       subtitle = "Sauf Glaris, St-Gall et les Grisons (données indisponibles)",
       caption ="Source des données: OFS 2019") +
  # Define margins and legend positions
  theme(strip.text = element_text(size=9), 
        panel.spacing = unit(0.5, "lines"), 
        legend.position = "bottom", 
        plot.title = element_text(size = 14, face="bold",
                                  margin = margin(10, 0, 10, 0)), 
        plot.subtitle = element_text(margin = margin(0, 0, 10, 0)), 
        axis.text.x = element_text(angle=70, vjust=0.5), 
        axis.title.x = element_text(vjust = -3), 
        axis.title.y = element_text(vjust = 6), 
        plot.margin = unit(c(1, 2, 1, 2), "cm")) +
  facet_wrap(~ canton)


