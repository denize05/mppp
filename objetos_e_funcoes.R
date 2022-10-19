# Vetor simples
# Criando um vetor -> Simples

itens <- c("leite","pão","ovos","queijo")

# Criando vetor com preços
preços <- runif(length(itens), min=3, max=10)
preços <- round(preços,digits = 2)

# criando data.frame com os vetores
df <- data.frame(itens,preços)

# Objeto Complexo

# Criando data frame com 2 variaveis
df <- data.frame(
"registro" = seq(1:100),
"valor1" = rnorm(100),
"valor2"= rnorm(100)
)
# Criando a regressão linear
l <- lm(valor1~valor2,df)
# exbindo a estrutura da regressão
str(l)

