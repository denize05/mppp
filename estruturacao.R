library(datasets)
library(dplyr)
library(tidyr)

# Vamos carregar o dataset starwars como df e retirar os valores ausentes.
df <- starwars[,1:10]
df <- na.omit(df)

# Vamos dar uma olhada na estrutura e nas primeiras linhas
str(df)
head(df)

# Temos 9 caracterísiticas dos personagens de Star Wars distribuídas em colunas
# vamos agrupar as medidas heigth, mass e birth_year em uma coluna, deixando nosso
# dataset mais "alongado".
# vamos "pivotar" nossa base, que vai ter agora a coluna "Medidas", com a função
# pivot_longer
df_long <- pivot_longer(df,c(2,3,7),names_to = "Medidas")
# Vamos dar uma olhada no dataset transformado
head(df_long)
