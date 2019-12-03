## Parlamentares são sócios de empresas 
### Uso 
#### Todos os CNAES
Para baixar as informações dos parlamentares que são sócios de empresas, execute o seguinte comando estando neste diretório:

```
Rscript export_socios_empresas_parlamentares.R -s <socios_datapath> -i <info_empresas_datapath>
```

Onde os argumentos são:

- `-s <socios_datapath>`: Caminho e nome do arquivo de destino que conterá os dados de parlamentares que são sócios de empresas. O default é `raw_data/empresas/socios_empresas_todos_parlamentares.csv.csv`.
- `-i <info_empresas_datapath>`: Caminho e nome do arquivo de destino que conterá mais dados das empresas que os parlamentares são sócios. O default é `raw_data/empresas/info_empresas_socios_todos_parlamentares.csv.csv`.

#### Somente empresas agrícolas
Para baixar as informações dos parlamentares que são sócios somente de **empresas agrícolas**, execute o seguinte comando estando neste diretório:

```
Rscript export_socios_empresas_agricolas_parlamentares.R -o <socios_datapath>
```

Onde o argumento é:

- `-o <socios_datapath>`: Caminho e nome do arquivo de destino que conterá os dados de doadores que são sócios de empresas. O default é `raw_data/empresas/socios_empresas_agricolas_todos_parlamentares.csv`.