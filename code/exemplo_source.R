# Exemplo Source

listar_arquivos <- function(caminho = getwd()){
    list.files(caminho)
}


calcular_atraso <- function(saida, saida_prog){
    saida - saida_prog
}

variavel_exemplo <- 10
