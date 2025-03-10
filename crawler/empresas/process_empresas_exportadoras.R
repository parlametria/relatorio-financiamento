#' @title Importa dados do csv e adiciona ano como coluna
#' @description Importa dados do csv passado como origem e adiciona a coluna ano caso o mesmo esteja 
#' no padrão *_{ano}.csv
#' @param datapath Caminho para o csv que deve ser lido
#' @return Dataframe contendo informações do csv e a coluna adicionada ano
#' @examples
#' empresas <- import_empresas_exportadoras()
import_empresas_exportadoras <- function(datapath = NULL) {
  library(tidyverse)
  library(here)
  
  ano <- str_match(datapath, "_(.*?).csv")[,2]
  
  empresas <- read_csv(datapath) %>% 
    mutate(ano = ano)
  
  return(empresas)
}

#' @title Processa dados de empresas exportadoras
#' @description A partir do aquivo zip que contém informações de empresas exportadoras esta função descompacta os 
#' arquivos csvs e os junta em um único dataframe
#' @param zip_data_path Caminho para o arquivo zip com informações das empresas exportadoras
#' @return Dataframe contendo informações das empresas transportadoras de 1997 até 2019. 
#' Fonte: Ministério da Economia (http://www.mdic.gov.br/index.php/comercio-exterior/estatisticas-de-comercio-exterior/empresas-brasileiras-exportadoras-e-importadoras)
#' @examples
#' empresas_transportadoras <- process_empresas_exportadoras()
process_empresas_exportadoras <- 
  function(zip_data_path = here::here("crawler/empresas/exportadoras.zip")) {
  
  library(tidyverse)
    
  output_path = here::here("crawler/empresas/exportadoras/")
  
  # Descompactando o arquivo .zip
  unzip(zip_data_path, exdir = output_path)
  
  # lendo arquivos
  empresas_exportadoras <- list.files(path = output_path, pattern = "*.csv") %>% 
    map_df( ~ import_empresas_exportadoras(paste0(output_path, .)))
  
  empresas_alt <- empresas_exportadoras %>% 
    arrange(desc(ano)) %>% 
    distinct(CNPJ, .keep_all = TRUE) %>% 
    select(ano, cnpj = CNPJ, razao_social = EMPRESA, endereco = ENDEREÇO, numero = NÚMERO, bairro = BAIRRO,
           cep = CEP, municipio = MUNICÍPIO, uf = UF, cnae_primario = `CNAE PRIMÁRIA`, 
           natureza_juridica = `NATUREZA JURÍDICA`)
  
  return(empresas_exportadoras)
}

#' @title Classifica cnpjs como empresas exportadoras ou não usando Lista do Min. da Economia
#' @description A partir de um dataframe com um coluna cnpj retorna o mesmo dataframe com uma coluna a mais indicando
#' se o cnpj é de uma empresa exportadora ou não.
#' @param df Dataframe com pelo menos uma coluna chamada cnpj
#' @return Dataframe com informação sobre se a empresa tem cnpj ou não
#' @example classifica_empresas_exportacao()
classifica_empresas_exportacao <- function(df) {
  library(tidyverse)
  
  empresas_exportadoras <- process_empresas_exportadoras()
  
  lista_empresas_exportadoras <- empresas_exportadoras %>% 
    select(cnpj = CNPJ) %>% 
    distinct(cnpj) %>% 
    pull(cnpj)
  
  df <- df %>% 
    mutate(exportadora = if_else(cnpj %in% lista_empresas_exportadoras, "sim", "nao")) 
  
  return(df)
}
