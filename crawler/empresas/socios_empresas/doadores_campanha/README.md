## Doadores de campanhas que são sócios de empresas 
### Uso 
#### Todos os CNAES
Para baixar as informações dos doadores de campanha que são sócios de empresas, execute o seguinte comando estando neste diretório:

```
Rscript export_socios_empresas_doadores_campanha.R -s <socios_datapath> -i <info_empresas_datapath>
```

Onde os argumentos são:

- `-s <socios_datapath>`: Caminho e nome do arquivo de destino que conterá os dados de doadores que são sócios de empresas. O default é `raw_data/empresas/empresas_doadores_todos_parlamentares.csv`.
- `-i <info_empresas_datapath>`: Caminho e nome do arquivo de destino que conterá mais dados das empresas que os doadores são sócios. O default é `raw_data/empresas/info_empresas_doadores_todos_parlamentares.csv`.

#### Somente empresas agrícolas
Para baixar as informações dos doadores de campanha que são sócios somente de **empresas agrícolas**, execute o seguinte comando estando neste diretório:

```
Rscript export_socios_empresas_agricolas_doadores_campanha.R -o <socios_datapath>
```

Onde o argumento é:

- `-o <socios_datapath>`: Caminho e nome do arquivo de destino que conterá os dados de doadores que são sócios de empresas. O default é `raw_data/empresas/empresas_doadores_agricolas_todos_parlamentares.csv`.