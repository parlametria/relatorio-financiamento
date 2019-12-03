## Módulo de empresas e sócios de empresas ligados a Parlamentares

Este módulo extrai, processa e retorna dados de empresas ligadas diretamente a parlamentares (como sócios), a doadores de campanha de parlamentares e também aquelas que doaram em campanhas até 2014. O módulo também permite classificar empresas como exportadoras ou não.

### Dados necessários

Para recuperar as informações de sócios e doadores de empresas agrícolas é necessário fazer o download e configurar os seguintes passos:

1. Sócios de empresas segundo a Receita Federal do Brasil. Capturado e processado por [Turicas](https://github.com/turicas/socios-brasil); Salve o arquivo de [sócios](https://drive.google.com/open?id=1BYKgmFxSaJgT8JprVAI1AAsH6ZJTOBFo) em `raw_data/empresas/socio.csv.gz`;
2. Empresas exportadoras segundo o [Ministério da Economia](http://www.mdic.gov.br/index.php/comercio-exterior/estatisticas-de-comercio-exterior/empresas-brasileiras-exportadoras-e-importadoras); Baixe os dados de empresas exportadoras [aqui](https://drive.google.com/file/d/1m47jEmClrxSyCQLh1jMqmkAEjfuLyJ9Y/view?usp=sharing); Salve o arquivo em `raw_data/empresas/exportadoras.zip`;
3. Configure a API com Dados da Receita Federal desenvolvida por [Cuducos](https://github.com/cuducos/minha-receita); 