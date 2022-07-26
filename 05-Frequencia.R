# Estat�stica B�sica

# Parte 4 - Tabela de Freq�ncia

# Definindo a pasta de Trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("d:/Users/Flavio Magela/Documents/CursoBI/Cap12")
getwd()


# Carregando o dataset
dados <- read.csv("Usuarios.csv",
                  dec = ".",
                  sep = ",",
                  h = T,
                  fileEncoding = "windows-1252")

# Visualizando e sumarizando os dados
View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)
mean(dados$grau_instrucao)


# Tabela de Frequ�ncia Absolutas
freq <- table(dados$grau_instrucao)
View(freq)

# Tabela de Frequ�ncia Relativa
freq_rel <- prop.table(freq)
View(freq_rel)

# Colocar  a frequ�ncia Relativa em Porcentagem (100 * freq_rel_table)
p_freq_rel <- 100 * prop.table(freq_rel)
View(p_freq_rel)

# Adiciona linhas de total (concatenar e mostrar no final da tabela)
View(freq)
freq <- c(freq, sum(freq))
View(freq)
names(freq)[4] <- "Total"
View(freq)

# Tabela final com todos os valores

# Calculamos frequ�ncia relativa e frequ�ncia proporcional
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel,sum(p_freq_rel))

# Tabela final com todos os valores (concatenar e colocar tudo em uma �nica tabela)
tabela_final <- cbind(freq,   # c - coluna bind - liga��o em ingl�s - fazer liga��o por coluna
                      freq_rel = round(freq_rel, digits = 2), # arrendondar as casas decimais para 2 digitos
                      p_freq_rel = round(p_freq_rel, digits = 2))

View(tabela_final)










