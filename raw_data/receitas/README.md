## Dados do módulo de receitas

- **parlamentares_doadores.csv**: lista de todas as doações recebidas pelos parlamentares (deputados e senadores) atualmente em exercício (até a data de modificação do arquivo) durante as eleições de **2018** e declaradas ao TSE. Cada observação do conjunto de dados é uma doação de um CPF ou CNPJ (no caso de doações do partido e de outros candidatos) para um deputado. Existem informações do total da doação na coluna valor_receita. Gerado pela função `processa_doacoes_parlamentares_tse` do arquivo `parlametria/crawler/receitas/analyzer_receitas_tse.R` ou pelo script `export_doacoes_campanha.R`.

- **receitas_tse_2018.csv**: lista de parlamentares (deputados e senadores) atualmente em exercício (até a data de modificação do arquivo) com informação do total doado pelo partido durante as eleições de 2018. Gerado pelo script `parlametria/crawler/receitas/export_receitas_tse.R`. 