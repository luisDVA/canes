library(readr)

canes <- read.csv("datos/crecimiento_canes.csv")

summary(lm(peso~edad+raza,data=canes))

summary(aov(lm(peso~edad+raza,data=canes)))
