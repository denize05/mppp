pacman::p_load(data.table, dplyr, tidyverse, validate)


# Vamos carregar uma planilha Excel contendo o número de casos de hanseniase 
# utilizando uma função do pacote readxl, que permite trabalhar com arquivos xls

hanseniase <- readxl::read_excel("bases_originais/hanseniase.xlsx")
str(hanseniase)

pop <- read.csv2("bases_originais/pop12.csv",skip = 3)
str(pop)

hanseniase$`Município de notificação`
hanseniase <- left_join(hanseniase,pop,by = c("Município de notificação"="Município"))
head(hanseniase)

teste_cor <- cor.test(hanseniase$Casos,hanseniase$População_residente)
summary(teste_cor)
print( str_c( "O p-value do teste de correlação foi igual a ", 
              round(teste_cor$p.value,2)
            )
      )
# H0: variáveis são independentes / não têm associação. p-valor (p-value) > 0.05
# H1: variáveis são dependentes / há associação. p-valor (p-value) <= 0.05
 