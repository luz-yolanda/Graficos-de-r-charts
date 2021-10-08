# Hecho con gusto por Luz Yolanda Rivera (UAEH)
# LABORATORIO - Gráficas Bump chart básico con ggplot2
#################################################
# Objetivo: hacer diversas visualizaciones Bump chart básico con ggplot2
# ------------------------------------------------

#requisitos
# install.packages("tidyverse")
#install.packages("ggbump")
library(tidyverse)
library(ggbump)
library(ggplot2)
library(gganimate)
library(gifski)

#El siguiente conjunto de datos representa la clasificación (y) de algunos jugadores de tenis (grupo) 
#a lo largo de los años (x), estos datos serán usados en los ejemplos siguientes.

año <- rep(2019:2021, 4)
posicion <- c(4, 2, 2, 3, 1, 4, 2, 3, 1, 1, 4, 3)
jugador <- c("A", "A", "A",
             "B", "B", "B", 
             "C", "C", "C",
             "D", "D", "D")
#hacemos un data frame con los datos de los jugadores de año, posicion y jugador
df <- data.frame(x = año,
                 y = posicion,
                 grupo = jugador)

#creamos el bump chart básico
ggplot(df, aes(x = x, y = y, color = grupo)) +
  geom_bump()

#se agregan puntos sobre las líneas

ggplot(df, aes(x = x, y = y, color = grupo)) +
  geom_bump(size = 1.5) +
  geom_point(size = 6)


