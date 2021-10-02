# Escreva a resposta logo abaixo da pergunta.
# Ao fazer os exercícios abaixo, escreva a sua 
# interpretação de cada um dos resultados!

# 1. Considere o vetor booleano abaixo:
dolar_subiu <- c(TRUE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE)

# Este vetor tem informação de uma semana (7 dias) indicando se o dolar subiu (TRUE)
# (ou não subiu - FALSE) no respectivo dia. Interprete os números abaixo:

# (a) length(dolar_subiu)
length(dolar_subiu)
    # Quantidade de dias

# (b) dolar_subiu[2]  (ps: a semana começa no domingo)
dolar_subiu[2]
    # O valor do dólar subiu na segunda-feira

# (c) sum(dolar_subiu)
sum(dolar_subiu)
    # Quantidade de dias em que o dólar subiu

# (d) mean(dolar_subiu)
mean(dolar_subiu)
# Porcentagem dos dias da semana em que o dólar subiu

# (e) Agora observe a saída de as.numeric(dolar_subiu). O que o R fez?
as.numeric(dolar_subiu)
    # Converteu TRUE para 1 e FALSE para 0
