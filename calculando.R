# ◧ A gente já sabe que o R nada de braçada em cálculos, análises e gráficos, certo? Então, vamos começar a aprender como fazer nossos cálculos no R.
# 
# ◧ Primeira coisa a dizer é que o R faz todos os cálculos mais "simples": somar, subtrair, multiplicar... E também os cálculos mais
# "estatísticos": média, mediana, variância... Mas também faz muito mais coisa!!!
#   
#   ◧ Como este é um curso de R básico, vamos focar nas funções mais simples, ok? Porém já introduzindo alguns usos práticos que podemos fazer com elas.
# 
# 📘 Os materiais desta atividade são um vídeo e o código de aula, disponível no github: https://github.com/hugoavmedeiros/cd_com_r/blob/master/scripts/programacao/calculando.R.
# 
# 💎 Compartilhe com a gente um código criado por você com a centralização de alguma base de dados (nativa, externa ou criada por você 🙂) Lembre-se de compartilhar um link do github!


### Gerando uma distribuição de poisson composta por 10.000 elementos com a função rpois
pois_df <- rpois(10000,100)
# visualizando a distribuição
pois_df

length(pois_df) # quantidade de registgros

#### Centralizando nossa distribuição subtraindo a média.
c1 <- pois_df - mean(pois_df)

### Podemos perceber uma concentração um pouco discreta dos dados após o processo.
hist(pois_df)
hist(c1)

