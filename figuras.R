library(ggplot2)
library(readr)
library(ggh4x)
library(ggfx)

canes <- read.csv("datos/crecimiento_canes.csv")

ggplot(canes)+
  geom_point(aes(edad,peso))


ggplot(canes)+
  geom_point(aes(edad,peso,color=factor(raza)))

ggplot(canes)+
  with_outer_glow(geom_point(aes(edad,peso,color=factor(raza))),expand = 4)


ggplot(canes)+
  geom_point(aes(edad,peso,color=factor(raza)))+
  geom_smooth(aes(edad,peso,color=factor(raza)))


ggplot(canes,aes(edad,peso,color=factor(raza)))+
  geom_point()+
  stat_rollingkernel()

ggplot()
summary(lm(peso~edad+raza,data=canes))



ggplot(canes)+
  geom_point(aes(edad,peso,color=factor(raza)))+
  scale_color_discrete(guide="none")+
  theme_bw()

ggsave("figuras/peso_razas.png")
