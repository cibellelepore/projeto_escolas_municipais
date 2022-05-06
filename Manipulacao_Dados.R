#Projeto Pessoal: Analise de CEIs do Municipio de Sao Paulo

#1°Passo: Instalando e carregando pacotes necessários

install.packages("tidyverse")
install.packages("readr")

library(tidyverse)
library(readr)

#2°Passo: Carregando base de dados livre da Secretaria Municipal da Educacao
# do Municipio de Sao Paulo

#3°Passo: Organizando a base de dados (excluindo colunas que não serão 
# necessárias para análise)

escolas122021[,c(4:5)] <- NULL
escolas122021$SUBPREF <- NULL
escolas122021[,c(9:13)] <- NULL
escolas122021$SETOR <- NULL
escolas122021[,c(11:13)] <- NULL
escolas122021[,c(12:18)] <- NULL
escolas122021$DATABASE <- NULL

#4°Passo: Verificando a estrutura das variaveis e o nome de cada.

str(escolas122021)
names(escolas122021)

#5°Passo: Criando uma nova base utilizando a base de dados inicial

escolasdomunicipio <- escolas122021

#6°Passo: Organizando os dados na variavel faixa etária (FX_ETARIA)

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "0 A 3 ANOS E ONZE MESES", "0 A 3 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "0 A 3 ANOS E 11 MESES", "0 A 3 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "00 a 03", "0 A 3 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "0 A 5 ANOS E 11 MESES", "0 A 5 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "0 A 5A", "0 A 5 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "0 A 6A", "0 A 6 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "02 a 03", "2 A 3 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A 5A", "0 A 5 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A CINCO ANOS", "0 A 5 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A 6A E11M", "0 A 6 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A 6 A", "0 A 6 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A 6A E 11M", "0 A 6 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A 6A 11M", "0 A 6 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A 6A", "0 A 6 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A 6 ANOS E 11 MESES DE IDADE", "0 A 6 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A 6A", "0 A 6 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A 5 ANOS DE IDADE", "0 A 5 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A 5A E 11M", "0 A 5 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A 6 A E 11M", "0 A 5 ANOS"))

escolasdomunicipio <- escolasdomunicipio %>% mutate(FX_ETARIA = replace(FX_ETARIA, FX_ETARIA==	
                                                                          "ZERO A 5 ANOS", "0 A 5 ANOS"))