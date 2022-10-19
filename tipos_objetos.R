# ◧ O R suporta
# diferentes tipos de objetos, os quais são usados de acordo com a dimensionalidade e o tipo de dados que vai ser utilizado:
#   
#   ◼️ vetor: estrutura de dados unidimensional que armazena elementos indexados. Ou seja, o vetor armazena somente uma dimensão de dados e é possível chamar um dado de acordo com sua posição no vetor.
# 
# ◼️ array (arranjo): igual a um vetor, mas aceita n dimensões.
# 
# ◼️ matriz: igual a um arranjo, mas bidimensional.
# 
# ◼️ lista: a lista é semelhante ao vetor, só que no lugar de armazenar dados, ela armazena outros objetos. Assim, é possível criar uma lista de vetores ou de matrizes, ou de matrizes e vetores, ou...
# 
# ◼️ data frame (quadro de dados): é um típico específico de lista, em que os objetos são armazenados em duas dimensões, na forma linhas x colunas. Diferente de uma matriz, que armazena apenas o mesmo tipo de dado, um data frame pode armazenar dados de tipos diferentes, fazendo com que seja o tipo ideal de objeto que utilizamos para analisar dados.


# Criando um data frame 

### Criando os vetores que serão as "colunas" do nosso data frame

registro <- seq(1:15000)
# seq() -> gera uma seguencia de valores
  str(registro)
  typeof(registro)
  class(registro)
  is.vector(registro)
  is.list(registro)
  is.array(registro)

  valor1 <- rnorm(15000)
# rnorm() -> gera valores aleatórios normalmente distruibuidos 
 
valor2 <- rnorm(15000)

### Vamos utilizar a função data.frame()
### A função data.frame constrói o data frame a partir de vetores, arrays ou listas
df <- data.frame(
  # 1º Coluna:
  registro,
  # 2º Coluna:
  valor1,
  # 3º Coluna
  valor2
  
)
#### Podemos alterar o nome das colunas com a função colnames
colunas <- c("registro", "dia1", "dia2")
colnames(df) <- colunas
head(df)


### Exemplo com array
teste1 = array(seq(1:1500))
teste2 = array(seq(1:1500))

df2 <- data.frame(
  teste1,
  teste2
)

