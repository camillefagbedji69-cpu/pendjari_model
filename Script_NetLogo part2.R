##Chargement des packages
library(dplyr)
library(ggplot2)
library(tidyr)
library(readr)

#mportation de la base
pendjari <- read.csv(file.choose(), sep = ";", dec = ".")

#visualisation
head(data)

summary (data)
#Création d’une variable "scenario"
data <- data %>%
  mutate(
    scenario = case_when(
      Input_precipitations == 900 & Input_feu == 0.3400 & Input_braconnage == 0.1000 &
        Input_reconstitution == 1e-04 & Input_fourrage == 0.5 & Input_deforestation == 0.0030 &
        Input_ETP == 783 ~ "pessimiste",
      Input_precipitations == 1200 & Input_feu == 0 & Input_braconnage == 0.05 &
        Input_reconstitution == 0.001 & Input_fourrage == 2 & 
        Input_deforestation == 0.001 & Input_ETP == 1044 ~ "optimiste", 
      Input_precipitations == 1000 & Input_feu == 0.0371 & Input_braconnage == 0.1 &
        Input_reconstitution == 0.0005 & Input_fourrage == 1.25 & Input_deforestation == 0.0021 &
        Input_ETP == 870  ~ "tendanciel",
    )
  )

data1 <-data %>% 
  filter(scenario== "optimiste" | scenario== "pessimiste" | scenario == "tendanciel")

data2 <- data %>%
  filter(scenario== "pessimiste")

plot1<-ggplot(data2, aes(x = step, y = Syncerus)) +
  geom_line(colour = "green")+
  labs( title = "Scénario pessimiste sur 30 ans",
        x = "Année", y = "Nombre de buffles")

# Visualisation de la population de buffles dans le temps
plot2 <- ggplot(data1, aes(x = step, y = Buffle, color = scenario, group = run)) +
  geom_line(alpha = 0.4) +
  stat_summary(fun = mean, geom = "line", size = 1.2, aes(group = scenario)) +
  labs(
    title = "Population de Syncerus sur 30 ans",
    x = "Année", y = "Nombre de buffles"
  ) +
  theme_minimal()

#Visualisation de la biomasse ou de l’eau
ggplot(data, aes(x = step, y = Biomasse, color = scenario, group = run)) +
  geom_line(alpha = 0.4) +
  stat_summary(fun = mean, geom = "line", size = 1.2, aes(group = scenario)) +
  labs(title = "Biomasse fourragère disponible", x = "Année", y = "kg") +
  theme_minimal()

# 7. Comparaison finale (valeurs à l’année 30)
data_final <- data %>% filter(step == 30)

# Résumé par scénario
summary_final <- data_final %>%
  group_by(scenario) %>%
  summarise(
    population_moy = mean(Syncerus),
    biomasse_moy = mean(Biomasse),
    eau_moy = mean(Eau)
  )
print(summary_final)

# Boxplots de comparaison
ggplot(data_final, aes(x = scenario, y = Syncerus, fill = scenario)) +
  geom_boxplot() +
  labs(title = "Population finale de buffles par scénario", y = "Buffles à l’année 30") +
  theme_minimal()

# 8. Comparaison multi-variables (optionnel)
data_long <- data_final %>%
  select(scenario, Syncerus, Biomasse, Eau) %>%
  pivot_longer(cols = c(Syncerus, Biomasse, Eau), names_to = "variable", values_to = "valeur")

ggplot(data_long, aes(x = scenario, y = valeur, fill = variable)) +
  geom_boxplot() +
  facet_wrap(~variable, scales = "free_y") +
  labs(title = "Comparaison des stocks finaux par scénario") +
  theme_minimal()
