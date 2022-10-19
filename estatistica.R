# Copiando o dataframe 
df <- USArrests


### Estatística Descritiva com R
## Tabela de frequência absoluta da variável Murder da base USArrests
table(df$Murder)

## Tabela de frequência relativa da variável Murder da base USArrests
prop.table(table(df$Murder))

## Média da variável Murder da base USArrests
mean(df$Murder)

## Mediana da variável Murder da base USArrests
median(df$Murder)

## Separatrizes da variável Murder da base USArrests
quantile(df$Murder, probs=0.75)
quantile(df$Murder, probs=0.10)
quantile(df$Murder, probs=0.95)
boxplot(df$Murder) # boxplot - gráfico que resume as sepatrizes

## Desvio-padrão da variável Murder da base USArrests
sd(df$Murder)
plot(df$Murder)

## Sumário descritivo básico das variáveis
summary(USArrests)

## Sumário descritivo completo das variáveis usando o pacote fBasics
pacman::p_load(fBasics)
basicStats(df[ , c(1:4)])
hist(df$Murder) # histograma - gráfico que permite conhecer a curva dos dados
