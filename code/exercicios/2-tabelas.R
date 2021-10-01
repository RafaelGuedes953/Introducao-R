# Escreva a resposta logo abaixo da pergunta.
# tabelas -------------------------------------------------------------

# 1. Use o data.frame airquality para responder às questões abaixo:
ds <- airquality

# (a) quantas colunas airquality tem?
ncol(ds)

# (b) quantas linhas airquality tem?
nrow(ds)

# (c) o que a função head() retorna?
    # As 6 primeiras linhas do dataframe
head(ds)

# (d) quais são os nomes das colunas?
summary(ds)
    # Ozone, Solar.R, Wind, Tem, Month e Day

# (e) qual é a classe da coluna Ozone? Dicas: class() e '$'
class(ds$Ozone)
    #integer

# (f) o que o código str(airquality) retorna?
    # O tipo dos dados das colunas no dataset
str(ds)

# (g) utilizando a resposta da (f), quais são os tipos de
#     cada coluna da tabela airquality?
# $ Ozone  : int
# $ Solar.R: int  
# $ Wind   : num  
# $ Temp   : int  
# $ Month  : int 
# $ Day    : int 


# [desafio] 2. Use o data.frame airquality para responder às questões abaixo:
airquality <- datasets::airquality # esse pacote faz parte do R base, não é necessário instalar!


# Vamos calcular o desvio padrão de Ozone sem usar a função sd().
# Dica: guarde os resultados de cada item em objetos para poderem ser usados depois.
# (a) tire a média da coluna Ozone. Dica: use mean(x, na.rm = TRUE).
mediaOz <- mean(ds$Ozone, na.rm = TRUE)

# (b) subtraia da coluna Ozone a sua própria média (centralização).
ozMenosMedia <- ds[!is.na(ds$Ozone),]$Ozone-mediaOz
    

# (c) eleve o vetor ao quadrado.
ozQuad <- OzMenosMedia^2

# (d) tire a média do vetor.
mediaFinal <- mean(ozQuad)

# (e) tire a raíz quadrada.
raizQ <- sqrt(mediaFinal)

# (f) compare o resultado com sd(airquality$Ozone)
sd(airquality$Ozone, na.rm = TRUE)



