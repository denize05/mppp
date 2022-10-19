pacman::p_load(data.table, dplyr, tidyverse, validate)


# Vamos carregar uma planilha Excel contendo o número de casos de dengue 
# utilizando uma função do pacote readxl, que permite trabalhar com arquivos xls

hanseniase <- readxl::read_excel("bases_originais/hanseniase.xlsx")
str(hanseniase)

regras_hanseniase <- validator(Casos >= 5, Casos >= 10)

validacao_hanseniase <- confront(hanseniase, regras_hanseniase)

summary(validacao_hanseniase)

plot(validacao_hanseniase)
