# Uma das grandes questões da leitura de dados é o formato de armazenamento definitivo. Para simplificar, nesta disciplina estamos sempre usando armazenamento como data.frame, mas poderíamos utilizar também armazenamento relacional ou dimensional, por exemplo. Contudo, independente da forma, uma questão sempre presente é: armazenar em formato nativo ou em formato com interoperabilidade??? ◨
# 
# 📘 Os materiais desta atividade são um vídeo e o código de aula, disponível no github: https://github.com/hugoavmedeiros/cd_com_r/blob/master/scripts/etl/leitura.R.
# 
# 💎 Indique uma vantagem e uma desvantagem de cada tipo de arquivo (nativo e plano com interoperabilidade) e acrescente no código uma forma adicional de exportação e de leitura, com a respectiva comparação usando a função microbenchmark. Lembre-se de compartilhar um link do github!

#install.packages("microbenchmark"
library(microbenchmark)

# Vamos carregar o csv com os dados
pnad <- read.csv("bases_originais/PNAD.csv", sep = ",")
# informa o número de linhas do dataset
nrow(pnad)
# selecionando os 100 primeiros registros
pnad <- head(pnad,1000)

# compara os dois processos de exportação, usando a função microbenchmark
microbenchmark(
a <-write.csv(pnad,"pnad_csv.csv"),
b <- saveRDS(pnad,"pnad_rds.rds"),
times = 10L
)

microbenchmark(
  a <-read.csv("pnad_csv.csv"),
  b <- readRDS("pnad_rds.rds"),
  times = 10L
)
