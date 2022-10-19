library(dplyr)


# Vamos carregar nossa base contendo informações sobre internações hospitalares
aih <- read.csv2("bases_originais/internações.csv", skip = 3)
# Podemos perceber que temos a localidade indentificada pelo código e nome do município
str(aih)

# Vamos agregar a informação de população ao nosso dateset, sendo assim vamos 
# carregar os dados.
pop <- read.csv2("bases_originais/pop12.csv", skip=3)
str(pop)

# Agora vamos fazer uma "junção à esquerda" para agregar os dados ao dataframe
# aih
aih <- left_join(aih,pop, by = "Município")
str(aih)