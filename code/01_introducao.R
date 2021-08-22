# Exemplo de comentário em código R

# Aqui ficarão registrados alguns exemplos de sintaxe de situações da linguagem R

# Atalho para execução de código 'Ctrl+Enter'

# Operações matemátiacas básicas -----------------------------------------------
2 + 3 # Adição
2 * 3 # Multiplicação
2 - 3 # Subtração
2 / 3 # Divisão
4 ^ 2 # Potência

# Criando variáveis, também chamadas de 'Objetos' ------------------------------
# ' <- ' atalho para atribuição 'alt+-'
obj <- 1
obj # Imprime o objeto chamado 'obj'

soma <- 2 + 2
soma

# Guardando as saídas de operações ---------------------------------------------
opExpressao <- ((2+2)^2 + 150*5)/10
opExpressao # Mostrar saída guardada

# O interpretador do R diferencia Maiúscula de Minúscula -----------------------
a <- 10
A <- 36

# Saídas diferentes
a
A

# Apenas executar vs Guardar saída
33 / 11
resultado <- 33 / 11
resultado

# Atualizar valor de um objeto
resultado <- resultado * 5
resultado

# Regras de nomeação de objetos (variáveis) ------------------------------------
# Devem começar com letras
# Podem conter letras maiúsculas e minúsculas, números, _ e .

# Permitido
c <- 3
c1 <- 4
objeto <- 5
m_obj <- 1
m.obj <- 2
obj. <- 'teste'

#Não permitido
1x <- 1
_obj <- 2
m-obj <- 1


# Estilos de nomes utilizados --------------------------------------------------
eu_uso_snake_code #snake_code
outrasPessoasUsamCamelCode #CamelCode
algumas.pessoas.usam.pontos #pontos.
E_algumasPoucas.Pessoas-RENUNCIAMconvenções #Não usar isso!

# É possível deletar objetos por meio do script --------------------------------
rm(A)
rm(a)

# Exercícios 01 ----------------------------------------------------------------

# 1. Multiplique a sua idade por 12 e salve em um objeto chamado "meses".
idade <- 22
meses <- idade * 12


# Aspas para dados char --------------------------------------------------------

#Objeto a, sem aspas (numérico)
a <- 10
a

#Letra a, com aspas (texto)
obj1 <- "a"
obj2 <- "masculino"

# Obs: a como objeto e "a" tem formatos diferentes

# Vetores ----------------------------------------------------------------------

# Vetores são conjuntos de valores
vetor1 <- c(1, 4, 3, 10)
vetor2 <- c("a", "b", "z")

vetor1
vetor2

# Sequência de números (Vetores)
#Utilizar o operador `:` -> i:f

# 1 até 10
vet <- c(1:10)

# 10 até 1
10:1

# -3 a 3
-3:3

#Não permitido
"a":"e"

# Os vetores são indexados (cada valor do vetor tem uma posição) ---------------

vetor <- c("a", "b", "c", "d")

vetor[1]
vetor[2]
vetor[3]
vetor[4]

# Vários valores como índice do vetor
vetor[c(2, 3)] 
vetor[c(1, 2, 4)]
vetor[2:4]

vetor[5] # Índice inexistente

# Excluir elementos de um vetor (apenas para exibição) -------------------------
vetor[-1]
vetor[1] #vetor continua inalterado


# Atribuindo podemos realizar a remoção de um elemento do vetor ----------------
vetor <- vetor[-1]
vetor[-2]
vetor[-c(2,4)]


# Adicionar valores a um vetor existente (Experimento) -------------------------
vetor <- c(1, 2, 3, 4)
vetor
vetor <- c(vetor, 5, 6)
vetor

# Os vetores são homogêneos, apenas um tipo de objeto (dados)
# É da mesma classe que seus elementos

vetor1 <- c(1, 5, 3, -10)
vetor2 <- c("a", "b", "c")

# Se tentarmos misturar duas classes, o R vai apresentar o
# comportamento conhecido como coerção
vetor <- c(1, 2, "a")

# Podem ser realizadas operações matemáticas com vetores
vetor <- c(0, 5, 20, -3)

vetor - 1
vetor / 2
vetor * 2
vetor + 1
vetor ^ 2

# Operações com mais de um vetor -----------------------------------------------
# Vetores do mesmo tamanho

vetor1 <- c(1, 2, 3)
vetor2 <- c(10, 20, 30)

vetor1 + vetor2

# Vetores com tamanhos múltiplos (Reciclagem)
# As operações com os primeiros elementos são "recicladas" para os últimos

vetor1 <- c(1, 2)
vetor2 <- c(10, 20, 30, 40)

vetor1 + vetor2

# Tamanhos de vetores não são múltiplos (Erro!)
vetor1 <- c(1, 2, 3)
vetor2 <- c(10, 20, 30, 40)

vetor1 + vetor2

# Experimentos relacionados a Numeric e Integer---------------------------------
# Obs: Integer ocupa menos espaço na memória
seq1 <- c(1:50) # Preencher com operador `:` define vetor como Integer
seq1 <- as.numeric(seq) # Conversão de Integer pra Numeric

# Exercícios 02 ----------------------------------------------------------------

# a. Guarde em um objeto uma sequência de números que comece
# em 0 e termine em 5.
resul <- (0:5)

# b. Use subsetting para fazer o R devolver o primeiro número dessa sequência.
# Em seguida, faça o R devolver o último número da sequência.
resul[1]
resul[6]
#Obs: No pacote dplyr existe uma função chamada last
last(resul)

# c. Multiplique todos os valores do vetor por -1. Guarde o resultado em
# um novo objeto chamado 'versao_negativa'.
versaoNegativa <- resul * (-1)
versaoNegativa

# Funções ----------------------------------------------------------------------

# Funções modularizam um código de R. Esse código é 
# rodado quando a função é chamada

# Descobrir mais sobre uma função
?seq
help(seq)
?help
help(help)

# Argumentos
# Dentro dos parênteses e separados por vírgula
c(1, 3, 5)

# A ordem pode ser alterada se os valores forem nomeados
seq(from = 4, to = 10, by = 2)
seq(4, 10, 2)

seq(by = 2, to = 10, from = 4)
seq(2, 10, 4)

vetor_exemplos <- c(1, 5, 3.4, 7.23, 2.1, 3.8)
class(vetor_exemplos)

# Exemplo 1 sum/mean - Como calcular uma média/soma
sum(vetor_exemplos)
mean(vetor_exemplos)

# Exemplo 2 median - Como calcular uma mediana
median(vetor_exemplos)

# Exemplo 3 var - Como calcular uma variância 
var(vetor_exemplos)

# Exemplo 4 - Como calcular um desvio-padrão
sd(vetor_exemplos)

# Exemplo 5 - Como calcular o máximo de um vetor
max(vetor_exemplos)

# Exemplo 6 - Como calcular o mínimo de um vetor

min(vetor_exemplos)

# Exemplo 7 - Como arrendondar valores
round(vetor_exemplos)

# Exemplo 8 - Descobrir o tamanho do vetor: quantos elementos ele tem?
length(vetor_exemplos)

# Funções usadas em objetos char

# Exemplo 9 - Função paste (Concatenar?)
paste("a", "b") # cola os elementos, separando com um espaço

paste0("a", "b") # cola os elementos sem separar!
paste0("b", "a")

resultado_colado <- paste0(1, "a")
resultado_colado

