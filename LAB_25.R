#############################################
#LABORATORIO: Tidy data (datos ordenados) 1 #
#############################################
#Prerrequisitos
#instalar paquete tidyverse
install.packages("tidyverse")

library(tidyverse)

   
#instalar paquete de datos
install.packages("remotes")

remotes::install_github("cienciadedatos/datos")


install.packages("datos")

#Cargar paquete tidyverse
library(tidyverse)

#Cargar paquete de datos
library(datos)

#tabla 1 hasta tabla 4b
#ver datos como tibble 
datos::tabla1
datos::tabla2
datos::tabla3
datos::tabla4a
datos::tabla4b

#ver datos como dataframe 
df1<-data.frame(tabla1)
df2<-data.frame(tabla2)
df3<-data.frame(tabla3)
df4a<-data.frame(tabla4a)
df4b<-data.frame(tabla4b)

#exportar los dataframes originales
write.csv(df1,file="df1.csv")
write.csv(df2,file="df2.csv")
write.csv(df3,file="df3.csv")
write.csv(df4a,file="df4a.csv")
write.csv(df4b,file="df4b.csv")

library(dplyr)
install.packages("tidyr")
library(tidyr)
# Ordenar datos con la tabla4a (PIVOTAR)
t4a_PIVOTANTE=tabla4a %>% 
  pivot_longer(cols=c("1999", "2000"), names_to="anio", values_to="casos")

# Exportar resultado: tabla ordenada
write.csv(t4a_PIVOTANTE, file = "t4a_PIVOTANTE.csv")

install.packages("remotes")
utils::contrib.url(repos = , "source")

