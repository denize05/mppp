# 
# ◧ A indexação é diferente, de acordo com o tipo de objeto, mas de maneira geral você pode acessar os index usando referências numéricas ou nominais.
# 
# ◧ Também é possível usar operadores lógicos, como maior, menor, igual e diferente para identificar dados e informações, ou para localizar o index correspondente.
# 
# 📘 Os materiais desta atividade são um vídeo, uma imagem com os operadores lógicos do R e o código de aula, disponível no github: https://github.com/hugoavmedeiros/cd_com_r/blob/master/scripts/programacao/index_operadores_logicos.R
# 
# 💎 Compartilhe com a gente um código criado por você em que você recupera ou identifica um dado ou informação usando indexação. Lembre-se de compartilhar um link do github!
#   
#   ☆ Se o seu código der erro de objeto, lembre de executar os códigos das aulas anteriores - e de salvar o seu projeto conforme progride 🙂

# Vamos carregar um dataset com informações sobre os personagens de Star Wars
df <- dplyr:: starwars[,1:10] # selecionando as colunas de interesse
str(df)

# Primeiro personagem linha 1, coluna 1
df[1,1]

# cria uma lista com a coluna de "area"
name = df$name
sample(name,10)

# Retorna a linha com informações sobre Mestre Yoda
df[which(df$name =="Yoda"),]
# Retorna os personagens com massa maior que 80
df[which(df$mass > 80),]
# Retorna os personagens com massa maior que a média
media_mass <- mean(na.omit(df$mass))
df[which(df$mass > media_mass),]

# Retorna o personagen com maior massa
max_mass <- max(na.omit(df$mass))
df[which(df$mass == max_mass),]


