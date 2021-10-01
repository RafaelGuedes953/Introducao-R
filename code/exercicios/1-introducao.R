# Exercícios - Introdução ao R
# Escreva a resposta logo abaixo da pergunta.

# objetos -----------------------------------------------------------------

# (a) Crie um vetor com o nome de tres frutas e guarde em um objeto chamado frutas.
frutas <- c("morango", "banana", "melão")

# (b) Use a função length() para contar o tamanho do vetor. Certifique-se que retorna 3.
tam_frutas <- length(frutas)

# (c) Use [] para retornar a primeira fruta do vetor.
frutas[1]

# (d) Inspecione a saída de 'paste("eu gosto de", frutas)' e responda se o tamanho do vetor mudou.
like <- paste("eu gosto de",frutas)

# vetores e funcoes ---------------------------------------------------------

# 1. Analise as duas linhas de códigos abaixo:
c(1,2,3) - 1           # código 1
c(1,2,3) - c(1,1,1)    # código 2
# Os resultados são iguais? Porquê?
# A saída é igual, mas o vetor de cima é subtraido por 1 em todos os casos
#   mas o segundo cada item é sutraido por cada item do segundo vetor
