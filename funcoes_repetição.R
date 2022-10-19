# ◧ Escrever estruturas de repetição pode não ser simples, sobretudo quando o que queremos é apenas passar por um objeto aplicando uma função. 
# 
# ◧ Ainda que bem em R temos acesso à "Família Apply", uma série de funções que permite aplicar funções de forma repetitivas a objetos - como por exemplo, calcular a média de cada variável de um data frame. 
# 
# ◧ Com as funções da "Família Apply" podemos simplificar e acelerar nosso código, evitando a construção de estruturas de repetição para tarefas rotineiras de dados ◨
# 
# 📘 Os materiais desta atividade são um vídeo e o código de aula (https://github.com/hugoavmedeiros/cd_com_r/blob/master/scripts/programacao/funcoes_de_repeticao.R), além do tutorial do datacamp
# 
# 💎 Compartilhe um código criado por você com a utilização de funções vetorizadas (ou funções de repetição ou funções da família apply) para aplicar uma função a uma base de dados. Lembre-se de compartilhar um link do github!


df <- data.frame(
  "indice" = seq(1:700),
  "v1" = sample(1:5000,700, replace = TRUE),
  "v2" = sample(1:5000,700, replace = TRUE),
  "v3" = sample(1:5000,700, replace = TRUE),
  "v4" = sample(1:5000,700, replace = TRUE)
)

str(df)
# Calcula a média para cada variável do data frame
sapply(df[ , -1], mean)

# Plota o histograma de todas as variáveis numéricas do data frame
sapply(df[ , -1], hist)


