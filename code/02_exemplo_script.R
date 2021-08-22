# Primeiro exemplo de script útil (em um contexto)

# Essa é uma sequência de passos que começa com a criação de um vetor de dados 
# e depois:

# 1. Calcula uma série de estatísticas desse vetor;
# 2. Imprime essas estatísticas em texto para que possamos colar isso em outro
#    lugar como um relatório, uma apresentação ou  outro tipo de documento.

# Carregando dados
dadosXp = c(3.37, 4.32, 5.67, 8.31, 9.21, 7.89, 2.13, 4.13, 1.23, 10.11)

# Calculando estatísticas -----------------------------------------------------

media <- mean(dadosXp)

# Mudando ponto por vírgula em desvioPadrao
# Arredondando valor de desvio padrão dado pela função sd com duas casas decimais
desvioPadrao <- format(round(sd(dadosXp),2), decimal.mark = ",")
desvioPadrao <- format(round(sd(dadosXp),2), decimal.mark = ".")
desvioPadrao <- as.numeric(desvioPadrao)

coefDeVariacao <- 100*as.numeric(desvioPadrao)/media

maximo <- max(dadosXp)

minimo <- min(dadosXp)

# Imprimindo os resultados finais -----------------------------------------

msgQueVouImp <- paste0("A média dos dados é ", media, ", já o desvio padrão é ", desvioPadrao,
                                    ". O coeficiente de variação, portanto, é ", coefDeVariacao,
                                    ", enquanto o máximo e o mínimo, por sua vez, são ", minimo, " e ", maximo,
                                    ".")

print(msgQueVouImp)

# Exercício

# Deixe a saída do script mais bonita arredondando os resultados que tem várias casas decimais.

msgQueVouImp <- paste0("A média dos dados é ", round(media,2), ", já o desvio padrão é ", desvioPadrao,
                       ". O coeficiente de variação, portanto, é ", round(coefDeVariacao,2),
                       ", enquanto o máximo e o mínimo, por sua vez, são ", minimo, " e ", maximo,
                       ".")

print(msgQueVouImp)

