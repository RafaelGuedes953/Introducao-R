# for + if é bem poderoso

# existe uma outra maneira de usar o for, que é bem poderosa também: podemos 
# ir evoluindo nossas variáveis passo a passo.

# vamos calcular a soma dos números de 1 a 30 números usando um laço, só pra ilustrar o conceito:

# primeiro iniciamos o "repositório" dessa soma
soma_de_1_a_30 <- 0

for(i in 1:30){
    
    print(paste0("Passo ", i))
    
    print(paste0("soma_de_1_a_30 está valendo ", soma_de_1_a_30))
    
    soma_de_1_a_30 <- soma_de_1_a_30+i
    
    print(paste0("Atualizei o soma_de_1_a_30, somando o valor de i, que é ", i))
    
}

# Outro exemplo:

# Criar um vetor que tenha o atraso médio em cada um dos aeroportos de origem da tabela "voos_em_janeiro.csv"

# Mas primeiro... Como a gente descobre quais são os aeroportos disponiveis?

# "readr::" serve para poder rodar o comando de uma biblioteca, sem precisar usar library

base_de_dados <- readr::read_csv2("dados/voos_de_janeiro.csv")

# assim nós conseguimos os aeroportos de origem voo por voo, isso é, de cada linha da base e em sequência
base_de_dados$origem

# a função "unique" tira as duplicações, sobrando só o que a gente quer mesmo:
unique(base_de_dados$origem)

# vamos guardar esse vetor para ficar mais fácil de usar depois
lista_de_aeroportos <- unique(base_de_dados$origem)

# vamos iniciar o nosso vetor de médias com NULL, ou seja, VAZIO:
vetor_de_medias <- NULL

for(aeroporto in lista_de_aeroportos){
    
    print(paste0("Calculando média dos voos que saíram de ", aeroporto))
    
    print(paste0("Filtrando a base..."))
    
    base_filtrada <- base_de_dados[base_de_dados$origem == aeroporto, ]
    
    print(paste0("Calculando a média..."))
    
    media <- round(mean(base_filtrada$atraso_saida, na.rm = TRUE),2)
    
    print(paste0("A média de atraso dos voos que saíram de ", aeroporto, " é ", media))
    
    print(paste0("Salvando em um vetor..."))
    
    # aqui está o pulo do gato!
    # concatena o vetor existente com o novo valor a ser inserido
    vetor_de_medias <- c(vetor_de_medias, media)
    
    print(paste0("Vetor ao final do cálculo do aeroporto ", aeroporto, ":"))
    print(vetor_de_medias)
    
}

# as médias estão chegando no "vetor_de_medias" conforme elas vão sendo
# calculadas, mas isso é só porque nós acertamos na linha 63.

# por conta disso, é fácil até criar uma tabela com esses resultados:
medias_atraso_por_aeroporto <- data.frame(
    aeroportos = lista_de_aeroportos,
    atraso_medio = vetor_de_medias
)

# podemos ver que o aeroporto LGA costuma ser mais pontual do que o JFK, onde o atraso chega quase a 15 minutos

# poderíamos fazer ao contrário também:

# é preciso reiniciar o vetor, se não ele vai continuar crescendo conforme a gente roda o for
vetor_de_medias <- NULL

for(aeroporto in lista_de_aeroportos){
    
    print(paste0("Calculando média dos voos que saíram de ", aeroporto))
    
    print(paste0("Filtrando a base..."))
    
    base_filtrada <- base_de_dados[base_de_dados$origem == aeroporto, ]
    
    print(paste0("Calculando a média..."))
    
    media <- mean(base_filtrada$atraso_saida, na.rm = TRUE)
    
    print(paste0("A média de atraso dos voos que saíram de ", aeroporto, " é ", media))
    
    print(paste0("Salvando em um vetor..."))
    
    # aqui está o pulo do gato!
    vetor_de_medias <- c(media, vetor_de_medias) #adiciona o novo valor no começo do vetor
    
    print(paste0("Vetor ao final do cálculo do aeroporto ", aeroporto, ":"))
    print(vetor_de_medias)
    
}

# agora entrou ao contrário, por causa do jeito que escrevemos na linha 103
# falando nisso, é claro que a gente poderia também simplesmente não gerar esse vetor!

#vetor_de_medias <- NULL

for(aeroporto in lista_de_aeroportos){
    
    print(paste0("Calculando média dos voos que saíram de ", aeroporto))
    
    print(paste0("Filtrando a base..."))
    
    base_filtrada <- base_de_dados[base_de_dados$origem == aeroporto, ]
    
    print(paste0("Calculando a média..."))
    
    media <- mean(base_filtrada$atraso_saida, na.rm = TRUE)
    
    print(paste0("A média de atraso dos voos que saíram de ", aeroporto, " é ", media))
    
    # sem as linhas abaixo o ródigo roda normal:
    #print(paste0("Salvando em um vetor..."))
    
    # aqui está o pulo do gato!
    #vetor_de_medias <- c(media, vetor_de_medias)
    
    #print(paste0("Vetor ao final do cálculo do aeroporto ", aeroporto, ":"))
    #print(vetor_de_medias)
    
}

# Exercício

# 1. Calcule as médias de atraso na chegada para cada um dos destinos 
#    e guarde em um vetor "vetor_de_atraso_de_chegada".


# a função "unique" tira as repetições, sobrando a lista de destinos:
lista_de_aeroportos <- unique(base_de_dados$destino)

# Criação do vetor de atraso de chegadas, e iniciar o vetor com NULL
medias_de_atraso_de_chegada <- NULL

for(aeroporto in lista_de_aeroportos){
    media_chegada <- round(mean(base_de_dados[base_de_dados$destino==aeroporto,]$atraso_chegada, na.rm = TRUE), 2)
    
    medias_de_atraso_de_chegada <- c(medias_de_atraso_de_chegada, media_chegada)
}


# 2. Calcule o mínimo o médio e o máximo desse vetor. Quais são os destinos em que os voos chegam com maior atraso?
# Para te ajudar a visualizar o resultado você poderia organizar os resultados em um data.frame.

# Cálculo do menor e maior valor de atraso de chegada (o menor valor, na verdade é uma chegada adiantada)
print(paste0("Menor atraso de chegada: ",min(medias_de_atraso_de_chegada)))
print(paste0("Maior atraso de chegada: ",mean(medias_de_atraso_de_chegada)))
print(paste0("Maior atraso de chegada: ",max(medias_de_atraso_de_chegada)))


# Organização dos dados em Data Frame
tabela_atraso_de_chegada <- data.frame(
    aeroporto = lista_de_aeroportos,
    atrasos_chegada = medias_de_atraso_de_chegada
)
