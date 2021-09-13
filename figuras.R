library(ggplot2)
library(readr)

canes <- read.csv("crecimiento_canes.csv")

ggplot(canes)+
  geom_point(aes(edad,peso))


ggplot(canes)+
  geom_point(aes(edad,peso,color=factor(raza)))

ggplot(canes)+
  geom_point(aes(edad,peso,color=factor(raza)))+
  geom_smooth(aes(edad,peso,color=factor(raza)))

summary(lm(peso~edad+raza,data=canes))



ggplot(canes)+
  geom_point(aes(edad,peso,color=factor(raza)))+
  scale_color_discrete(guide="none")+
  theme_bw()

ggsave("figuras/peso_razas.png")
