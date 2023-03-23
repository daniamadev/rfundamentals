library(readr)
avg_study <- read.csv("mean-years-of-schooling-long-run.csv",
                      sep = ";",
                      dec = "."
                      )
View(avg_study)

# 1- filtrar país
# a solução que encontrei foi essa lib que te permite fazer seleção usando SQL
# não sei se é a melhor estratégia, mas gostei da possibilidade de combinar
# SQL na linguagem R
install.packages("sqldf")
library(sqldf)

df <- read.csv.sql("mean-years-of-schooling-long-run.csv", "select * from file where code = 'AFG'", sep = ";")

# 2- filtrar países com ano acima de 1950
library(dplyr)

avg_study %>%
  filter(Code == "AFG" & Year > 1950) %>%
  View()

# estou testando o uso das funções combinado a variáveis
contagemAFG <- avg_study %>%
  filter(Code == "BRA" & Year < 2000) %>%
  View()

# 3- somar todos os anos do mesmo país e calcular média geral

  
# 4- somar todos os anos do mesmo país e calcular por década

