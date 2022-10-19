# seta a semente aleatória de geração de dados
# usando a função addTaskCallback deixamos a set.seed fixa, rodando no back

tarefaSemente <- addTaskCallback(function(...) {set.seed(123);TRUE}) # atribui a tarefa à variável tarefaSemente
tarefaSemente # chama a tarefaSemente

# Criando data frame com 2 variaveis
df <- data.frame(
# Index
  "registro" = seq(1:100000),
# Distribuição Binomial
  "Binomial" = rbinom(100,1,0.8),
# Distribuição Normal  
  "Normal"= rnorm(100)
)
# Conferindo as distribuições com o auxílio de histogramas
hist(df$Binomial)
hist(df$Normal, 
     col="white",
     border="red",
     prob = TRUE, 
     xlab = "Normal",
     main = "Distribuição Normal") 
lines(density(df$Normal), 
      lwd = 2, 
      col = "blue")





# por fim, podemos usar a função removeTaskCallback para remover a tarefa que criamos lá em cima
removeTaskCallback(tarefaSemente)
