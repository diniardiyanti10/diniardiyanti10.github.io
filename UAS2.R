library("tidyverse")
library("readxl")
data<-('dat.xlsx')
head(dat)
library("ggplot2")
library("readxl")
library("dplyr")
ggplot(data=dat,aes(x=TP,y=S))+
  geom_point(color="blue",size=2)+
  labs(title="tabel 1. Hubungan antara Pembelian Mobil Listrik dan Subsidi",
       x="Pembelian Mobil Listrik",
       y="Subsidi",
       caption = "sumber : Badan Pusat Statistik")+
  theme_classic()
reg1<-lm(TP~S,data=dat)
summary(reg1)