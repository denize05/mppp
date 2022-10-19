# ◧ Dplyr!!! O pacote do tidyverse voltado para transformações!!! Dplyr é uma mão na roda muito grande, pois ele traz funções para diversas operações que fazemos no dia a dia: sumários, agrupamentos, manipulação de casos, manipulação de variáveis e enriquecimento de bases!! 
#   
#   ◨ Além disso, o dplyr possui uma folha de dicas muito detalhada!!!
#   
#   📘 Os materiais desta atividade são um vídeo, um link para uma folha de dicas do dplyr, e o código de aula, disponível no github: https://github.com/hugoavmedeiros/cd_com_r/blob/master/scripts/transformacao/dplyr.R.
# 
# 💎Compartilhe com a gente um código criado por você com a aplicação de pelo menos um sumário, um agrupamento, uma
# manipulação de casos e uma manipulação de colunas.

library(dplyr)

df <- starwars[,1:10]
str(df)

# sumários
count(df,gender) 

# sumários com agrupamentos
origem_massa <- df %>% group_by(homeworld) %>% summarise(avg = mean(mass))

### Transformação de Casos

# seleção de casos
df %>% filter(homeworld != 'Alderaan') %>% group_by(homeworld) %>% summarise(avg = mean(mass))


# ordenar casos
arrange(origem_massa, avg) # ascendente
arrange(origem_massa, desc(avg)) # descendente

### Transformação de Variáveis

# seleção de colunas
df %>% select(homeworld, sex,height) %>% arrange(height)

# novas colunas
df  %>% mutate(imc = mass/(height/100)^2)

# renomear
df %>% rename(origem = homeworld)
