##chargement des packages 
library(dplyr)
library(ggplot2)
library(tidyr)
library(readr)
library(gridExtra)

##importation de la base de données 

pendjari <- read.csv(file.choose(), sep = ";", dec = ".")

str(pendjari)

##conversion en numérique 
pendjari$Biomasse_numeric <- as.numeric(pendjari$Biomasse)

##vérification 

sum(is.na(pendjari$Biomasse_numeric))

pendjari <- pendjari %>%
  mutate(
    Biomasse_numeric = as.numeric(gsub(",", ".", Biomasse))
  )  ##conversion des NA en numérique 

##statistique descriptive 

summary(pendjari)

#Création d’une variable "scenario"
data <- pendjari %>%
  mutate (scenario = case_when(
      Input_precipitations == 900 & Input_feu == 0.1000 & Input_braconnage == 0.100 
      & Input_reconstitution == 1e-04  & Input_deforestation == 0.0030
      ~ "pessimiste",
      Input_precipitations == 1000 & Input_feu == 0.0371 & Input_braconnage == 0.075 
      & Input_reconstitution == 5e-04 
      & Input_deforestation == 0.0021
      ~ "tendanciel",
      Input_precipitations == 1200 & Input_feu == 0.0000 & Input_braconnage == 0.050 
      & Input_reconstitution == 1e-03 
      & Input_deforestation == 0.0010 ~ "optimiste",
    ))

##filtre des scénarios 

data1 <-data %>% 
  filter(scenario== "optimiste" | scenario== "pessimiste" | 
           scenario == "tendanciel") ##global

data2 <- data %>%
  filter(scenario== "tendanciel") ##scénario de base 

##resultats du modèle

plot1<-ggplot(data2, aes(x = step, y = Buffle)) +
  geom_line(size = 1.2, colour = "black") +
  labs(title = "Évolution de la population de buffle",
       y = "Nombre d'individus", x = "Année") +
  theme_minimal()

plot2<-ggplot(data2, aes(x = step, y = Eau)) +
  geom_line(size = 1.2, colour = "black") +
  labs(title = "Évolution de la quantité d'eau",
       y = "Quantité en m3", x = "Année") +
  theme_minimal()

plot3<-ggplot(data2, aes(x = step, y = Biomasse)) +
  geom_line(size = 1.2, colour = "black") +
  labs(title = "Évolution de la biomasse fourragère",
       y = "Quantité en t", x = "Année") +
  theme_minimal()

##graphique d'ensemble 

grid1 <- grid.arrange(plot1,plot2, plot3, nrow = 2)

ggsave("C:/Users/CAMILLE FAGBEDJI/Documents/Rendu/Graphiques/Grid1.png", 
       grid1, height = 15, units = "cm")


##analyse de sensibilité 

library(randomForest)
library(tidyverse)

# Filtre des données l'année 50

data_final <- data %>% filter(step == max(step))

#Sélection des variables explicatives (input) et des sorties
inputs <- c("Input_precipitations", "Input_reconstitution", "Input_feu",
            "Input_braconnage", "Input_deforestation")

##Renommer 

renommer <- c(
  Input_precipitations = "Précipitations",
  Input_reconstitution = "Reconstitution naturelle",
  Input_feu            = "Feux de brousse",
  Input_braconnage     = "Braconnage",
  Input_deforestation  = "Déforestation"
)


# Fonction générique pour RF + graphique

plot_importance <- function(output_var, nom_output) {
  # Random forest
  rf_model <- randomForest(
    formula = as.formula(paste(output_var, "~", paste(inputs, collapse = "+"))),
    data = data_final,
    importance = TRUE,
    ntree = 500
  )
  
  # Importance sous forme de tableau
  imp_df <- as.data.frame(importance(rf_model))
  imp_df$Variable <- rownames(imp_df)
  imp_df <- imp_df %>% 
    mutate(Variable = renommer[Variable])  # Renommage lisible
  
  imp_df1<- imp_df %>%
    mutate(Variable = renommer[Variable]) %>%
    select(Variable, `%IncMSE`) %>%
    arrange(desc(`%IncMSE`)) %>%
    mutate(Output = nom_output)
  
  ##sauvegarde
  liste_tables[[output_var]] <<- imp_df1
  
  # Graphique ggplot
  p <- ggplot(imp_df, aes(x = reorder(Variable, `%IncMSE`), y = `%IncMSE`)) +
    geom_col(fill = "gray") +
    coord_flip() +
    labs(
      title = paste("Importance des variables –", nom_output),
      x = "Variables explicatives",
      y = "% d’augmentation de l’erreur MSE"
    ) +
    theme_minimal(base_size = 13)
  
  # Sauvegarde
  ggsave(paste0("importance_", output_var, ".png"), plot = p, width = 8, height = 5)
  print(p)
}

# Lancer pour les trois sorties
p1<- plot_importance("Buffle", "Population de buffles")
p2 <-plot_importance("Biomasse", "Biomasse fourragère")
p3 <- plot_importance("Eau", "Ressource en eau")

grid1<-  grid.arrange(p1, p2, p3)
##sortie sous png 

ggsave("C:/Users/CAMILLE FAGBEDJI/Documents/Rendu/Graphiques/G1.png", 
       grid1, height = 15, units = "cm")

ggsave("C:/Users/CAMILLE FAGBEDJI/Documents/Rendu/Graphiques/Imp2.png", 
       p2)

ggsave("C:/Users/CAMILLE FAGBEDJI/Documents/Rendu/Graphiques/Imp3.png", 
       p3)

##graphiques des scénariis expérimentés 

data1 <-data %>% 
  filter(scenario== "optimiste" | scenario== "pessimiste" | 
           scenario == "tendanciel")


plot12<- ggplot(data = data1,
               aes(x = step, y = Buffle, color = scenario, group = run.number)) +
  geom_line(size = 1.2) +
  stat_summary(fun = mean, geom = "line", size = 1.2, 
               aes(group = scenario)) +
  labs(
    title = "Evolution de la population de buffles sur 50 ans",
    x = "Année", y = "Nombre de buffles"
  ) +
  theme_minimal() ##graphique buffle 

plot13<- ggplot(data = data1,
               aes(x = step, y = Eau, 
                   color = scenario, group = run.number)) +
  geom_line(size = 1.2) +
  stat_summary(fun = mean, geom = "line", size = 1.2, aes(group = scenario)) +
  labs(
    title = "Evolution de la ressource en eau sur 50 ans",
    x = "Année", y = "Quantité d'eau en m3"
  ) +
  theme_minimal() ##graphique eau

plot14<- ggplot(data = data1,
               aes(x = step, y = Biomasse, color = scenario, 
                   group = run.number)) +
  geom_line(alpha = 0.4) +
  stat_summary(fun = mean, geom = "line", size = 1.2, aes(group = scenario)) +
  labs(
    title = "Evolution de la biomasse fourragère sur 50 ans",
    x = "Année", y = "Quantité en t de MS"
  ) 
  theme_minimal() ##graphique biomasse

  
  grid24 <- grid.arrange(plot12, plot13, plot14)
  
  ggsave("C:/Users/CAMILLE FAGBEDJI/Documents/Rendu/Graphiques/Fig.png",
         grid24, height = 15, units = "cm")
  
  
##extraction données de la dernière année 
  resum<-data1 %>%
    filter(step == max(step)) %>%
    select(scenario, Buffle, Biomasse, Eau)
  
  write.csv(resum, "Resum.csv")
  