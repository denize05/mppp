## CORRELAÇÃO COM R ##
# PRIMEIRO, VAMOS CARREGAR OS PACOTES
pacman::p_load(datasets,corrplot, dplyr, ggplot2)

# Vamos carregar o dataset com dados demográficos da Suíça

df <- datasets::swiss
str(df)

# TABELA DE CORRELAÇÃO COM TODAS AS VARIÁVEIS #
cor(df)

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
pairs(df)

# CORRPLOT DAS VARIÁVEIS #
dfCor <- cor(df)
corrplot(dfCor, method = "number", order = 'alphabet')
corrplot(dfCor, order = 'alphabet') 
