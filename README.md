# Participação de sócios de empresas no financiamento de campanhas em 2018 - Transparência

Repositório com scripts e dados necessários para a construção do relatório de participação de sócios de empresas no financiamento de campanhas em 2018 do [Parlametria](https://parlametria.org/relatorios).

## O repositório

O processamento dos dados e as visualizações do relatório foram feitas utilizando linguagem R. Este projeto está dividido em 4 diretórios principais, descritos abaixo.

1. `crawler`: É a seção responsável por baixar todos os dados utilizados neste relatório; contém módulos de
    
    - `empresas`, responsável pela geração de dados de sócios de empresas que são doadores de campanha ou parlamentares em exercício;
    - `receitas`, responsável pela geração de dados de receitas do tse e doações de campanha em 2018 (e 2014 também, caso necessário);
    - `utils`, com funções comuns e utilizadas pelos demais módulos.

2. `processor`: Esta seção é responsável por receber os dados baixados pelo `crawler` e processá-los no formato a ser utilizado no relatório para geração dos gráficos e tabelas. Possui um módulo:

     - `empresas`, com funções e scripts que processam os setores econômicos das empresas, o valor total recebido de doações para os parlamentares na campanha de 2018, calcula o índice de proximidade dos congressistas com cada um dos setores econômicos e que exportam os dados usados no relatório.

3. `raw_data`: Este é o diretório destino de todos os dados baixados pelo `crawler` e pelo `processor`. Está organizado da seguinte forma:

    - `dados_tse`, contendo os dados de candidatos das eleições de 2014 e 2018 e das receitas de campanha declaradas por destes candidatos nos anos 2014 e 2018 disponíveis no site do TSE;
    - `empresas`, contendo os dados de empresas, somente agrícolas ou todas as gerais, e sócios de empresas que doaram na campanha de 2018 ou que são parlamentares em exercício.
     - `receitas`, com os dados das receitas de 2018 que vieram de Recursos de partidos políticos para os candidatos aos cargos de Senador e Deputado Federal e que tiveram a candidatura apta e deferida.
    - `parlamentares.csv`, arquivo com os dados dos deputados e senadores das legislaturas 55 e 56. Os scripts que geram este dataframe estão disponíveis no módulo [Parlamentares](https://github.com/analytics-ufcg/vozativa-dados/tree/master/crawler/parlamentares) do Perfil Parlamentar.

4. `reports`: Este diretório contém as visualizações utilizadas no relatório do Parlametria. Possui o seguinte diretório:

     - `financiamento-campanha-empresas`: Possui o relatório feito em RMarkdown (.Rmd) e a saída em formato .html. Tem também arquivos auxiliares, como o utils.R e styles.css.

## Quem faz este projeto
A **Open Knowledge Brasil (OKBR)** é uma Organização da Sociedade Civil (OSC) sem fins lucrativos e apartidária que atua para democratizar o acesso a dados e ampliar a  transparência e a participação política. Sua missão é ampliar o acesso ao conhecimento para resolver problemas sociais e melhorar a vida das pessoas, para que as decisões que moldam nossa sociedade sejam tomadas de forma compartilhada e responsável. A organização faz parte de uma rede internacional que atua em mais de 60 países. 

Web: https://br.okfn.org | Twitter: [@okfnbr](https://twitter.com/okfnbr)  | FB [fb.com/OpenKnowledgeBrasil](https://www.facebook.com/OpenKnowledgeBrasil)

O **Laboratório Analytics** é um laboratório de pesquisa, formação e inovação em Ciência de Dados Cívica na Universidade Federal de Campina Grande (UFCG). Desenvolve cursos, pesquisas e projetos de impacto social para avançar o estado da arte no uso de Ciência de Dados, Aprendizagem de Máquina e Visualização de Dados para a cidadania.

FB [fb.com/analytics.ufcg/](fb.com/analytics.ufcg/) | [github.com/analytics-ufcg](github.com/analytics-ufcg)

A **Dado Capital** é uma instituição de impacto social. Une competência regulatória e tecnológica para transformar informação em conhecimento. Simula e antecipa ações no Legislativo, dando um termômetro do que será discutido e votado. Reinventa, assim, a maneira das pessoas compreenderem questões essenciais que impactam suas vidas e as incentiva a participar de debates públicos, promovendo a democracia colaborativa

Web: http://dadocapital.org.br 
