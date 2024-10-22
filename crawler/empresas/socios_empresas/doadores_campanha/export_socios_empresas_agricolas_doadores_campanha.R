library(tidyverse)
library(here)
source(here::here("crawler/empresas/socios_empresas/doadores_campanha/analyzer_socios_empresas_agricolas_doadores_campanha.R"))

if(!require(optparse)){
  install.packages("optparse")
  suppressWarnings(suppressMessages(library(optparse)))
}

args = commandArgs(trailingOnly=TRUE)

message("LEIA O README deste diretório")
message("Use --help para mais informações\n")

option_list = list(
  make_option(c("-o", "--out"), type="character", default=here::here("raw_data/empresas/empresas_doadores_agricolas_todos_parlamentares.csv"), 
              help="nome do arquivo de saída [default= %default]", metavar="character")
) 

opt_parser = OptionParser(option_list=option_list)
opt = parse_args(opt_parser)

saida <- opt$out

message("Iniciando processamento...")
message("Baixando dados...")
socios_empresas_agricolas_todos_doadores <- process_socios_empresas_agricolas_doadores(fragmentado = TRUE)

message(paste0("Salvando o resultado em ", saida))
write_csv(socios_empresas_agricolas_todos_doadores[[1]], saida)

message("Concluído!")