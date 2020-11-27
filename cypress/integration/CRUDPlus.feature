#language: en

Feature: CRUD Plus

    COMO organizador e administrador do banco de dados
    DESEJO criar, consultar, atualizar e deletar minha tabela de diversas formas, também desejo mudar o idioma da página e remover colunas de informação da tela
    PARA que eu possa atualizar meu banco de dados e personalizar o site conforme minha preferência

   #Regra: É possivel adicionar itens na tabela
   #Regra: É nescessario que o item adicionado tenha um nome
   #Regra: É nescessario que o item adicionado tenha um valor
   #Regra: Validação do item adicionado na tabela
   Scenario Outline: Adicionando um elemento na lista
   Given dentro do site
   And clico no botão Add
   When é requisitada a inserção das descrições "<nome>" "<preço>" "<estoque>" "<país>" "<moeda>" "<dataDeModificação>" do item
   And excluo os novos campos que apareceram porque a tecla ENTER foi usada
   Then clico no botão salvar
   And valida se o item foi inserido corretamente na tabela "<nome>" "<preço>" "<estoque>" "<país>" "<moeda>" "<dataDeModificação>"
   Examples:
        | nome          | preço | estoque | país   | moeda | dataDeModificação |  
        | baguete (pao) | 12    | 30      | France | EUR   | 08/12/1999        |



   #Regra: É possivel adicionar itens na tabela
   #Regra: É possivel excluir itens na tabela
   #Regra: É possivel excluir itens selecionados na tabela
   #Regra: É nescessario que o item adicionado tenha um nome
   #Regra: É nescessario que o item adicionado tenha um valor
   #Regra: Validação do item adicionado na tabela
   Scenario Outline: Adicionando um elemento na lista, e logo após remover o elemento adicionado da lista
   Given dentro do site
   And clico no botão Add
   When é requisitada a inserção das descrições "<nome>" "<preço>" "<estoque>" "<país>" "<moeda>" "<dataDeModificação>" do item
   And excluo os novos campos que apareceram porque a tecla ENTER foi usada
   Then clico no botão salvar
   And excluo o item que foi criado
   Examples:
        | nome                   | preço | estoque | país   | moeda | dataDeModificação |
        | Best Company (solutis) | 10000 | 1       | Brazil | BRL   | 28/11/2020        |
        | Vaga eh minha (vaga)   | 777   | 1       | France | EUR   | 28/11/2020        |  



    #Regra: É possivel adicionar itens na tabela
    Scenario Outline: Adicionando um elemento sem nome na lista e buscando pela mensagem de error
    Given dentro do site
    And clico no botão Add
    When é requisitada a inserção das descrições preco "<preço>" do item
    Then clico no botão salvar
    And validar se a mensagem de error apareceu em cima do campo de nome
    Examples:
        | preço |
        | 12    |



    #Regra: É possivel adicionar itens na tabela
    Scenario Outline: Adicionando um elemento sem preço na lista e buscando pela mensagem de error
    Given dentro do site
    And clico no botão Add
    When é requisitada a inserção das descrições nome "<nome>" do item
    Then clico no botão salvar
    And validar se a mensagem de error apareceu em cima do campo de valor
    Examples:
        | nome          |
        | baguete (pao) |



    #Regra: É preciso que o usuario possa usar a ferramenta (filtro) do site
    #Regra: Tem que haver pelo menos um item na lista
    Scenario Outline: Filtrando a lista do banco de dados, para que ela mostre apenas os itens com valores compatíveis aos valores escolhidos
    Given dentro do site
    And que exista pelo menos um item na lista
    When clico no menu de filtros
    Then escolho os filtros de nome, valor, estoque, país, moeda, usado, marcado e data "<nome>" "<valor>" "<estoque>" "<país>" "<moeda>" "<usado>" "<marcado>" "<data>"
    Examples:
        | nome           | valor | estoque | país     | moeda   | usado | marcado   | data       |
        | Solutis (best) | 395   | 320     | Brazil   | BRL     | Yes   | Unchecked | 28/11/2020 | 
        | Sorvete (sovt) | 120   | 100     | Ethiopia | ETB     | No    | Unchecked | 01/01/2021 |



    #Regra: É preciso que o usuario possa usar a ferramenta (filtro) do site
    #Regra: Tem que haver pelo menos um item na lista
    Scenario: Filtrando a lista do banco de dados por categorias, para que ela mostre apenas itens compativeis com as categorias escolhidas
    Given dentro do site
    When clico no menu filtro de exibiçao
    And escolho as categorias que eu quero exibir
    Then confirmo minhas escolhas



   #Regra: É preciso que o usuario possa usar a ferramenta (Show Warning) do site
   #Regra: É preciso que o usuario possa usar a ferramenta (Show Info) do site
   Scenario: Marcando itens que possuem tags de Warning ou Info
   Given dentro do site
   When clico em Show Warning
   And clico em Show Info
   Then posso ver quais itens estão marcados



   #Regra: É possivel editar os itens da tabela
   #Regra: Todos os atributos dos itens podem ser modificado, com exceção da cor
   #Regra: Tem que haver pelo menos um item na tabela
   #Regra: Todo item adicionado tem que ter uma descrição
   #Regra: Validação do item modificado na tabela
   Scenario Outline: Editando um item da lista do banco de dados e alterando os valores do nome, preço, país, moeda e a data
   Given dentro do site
   And que exista pelo menos um item na lista
   And clico no botão Edit
   When modifico o nome do item "<nome>" o preço do item "<preco>" o país do item "<pais>" a moeda do item "<moeda>" e a data do item "<data>"
   And clico no botão salvar
   Then verifico se o item foi realmente editado "<nome>" "<preco>" "<pais>" "<moeda>" "<data>"
   Examples:
        | nome            | preco  | pais           | moeda   |   data     |
        | Solutis (best)  | 999    | Brazil         | BRL     | 28/11/2020 |
        | Yorkshire (Roy) | 777    | United Kingdom | GBP     | 28/11/2020 |



   #Regra: Tem que haver pelo menos um item na tabela
   #Regra: Tem que haver pelo menos um item usando a moeda EUR
   #Regra: É possivel excluir todos os itens da tabela
   #Regra: É possivel selecionar todos os itens da tabela
   #Regra: É possivel excluir apenas os itens selecionados
   #Regra: O índice de itens passiveis de exclusão começa a partir de 1
   Scenario Outline: Excluir uma linha da lista de itens do banco de dados
   Given dentro do site
   And que exista pelo menos um item na lista
   When eu seleciono os itens que eu quero excluir usando os índices "<indiceExclusao1>" "<indiceExclusao2>" "<indiceExclusao3>"
   Then aperto no botão de excluir
   Examples:
       | indiceExclusao1 | indiceExclusao2 | indiceExclusao3 |
       | 1               | 2               | 12              |



   #Regra: Tem que haver pelo menos um item na tabela
   #Regra: Tem que haver pelo menos um item usando a moeda EUR
   #Regra: É possivel excluir todos os itens da tabela
   #Regra: É possivel selecionar todos os itens da tabela
   #Regra: Validação do item excluido na tabela
   Scenario Outline: Excluindo todos os itens da lista que usem a moeda EUR, usando o filtro de pesquisa
   Given dentro do site
   And que exista um item na lista com o tipo de moeda "<moeda>"
   When eu abro o menu de filtros
   And seleciono o tipo de moeda "<moeda>" que eu quero filtrar
   And seleciono todos os item com o mesmo tipo de moeda
   Then peço para o site excluir todos os item selecionados
   And verifico se todos os itens selecionados foram exlcluidos
    Examples:
        |moeda   |
        |EUR     |



   #Regra: É possivel adicionar itens na tabela
   #Regra: Tem que haver pelo menos um item sendo criado
   #Regra: Tem que haver pelo menos um item selecionado
   #Regra: É possivel excluir qualquer item da tabela
   Scenario: Excluir uma item que esta sendo adicionado na lista, usando o icone da lixeira
   Given dentro do site
   And clico no botão Add
   When um item está em criação
   Then aperto no icone da lixeira ao lado do item que desejo excluir



    #Regra: É preciso que o usuario possa alterar a região do site
    #Regra: É nescessario uma validação para ver se o idioma foi realmente alterado
    Scenario Outline: Alterando a linguagem do site 
    Given dentro do site
    When escolho um idioma "<idioma>"
    Then verifico se o idioma "<apresentacao>" foi alterado
    Examples:
        | idioma        | apresentacao         |
        | English (GB)  | Region: English (GB) |
        | English (US)  | Region: English (US) |
        | Finnish (FI)  | Region: Finnish (FI) |
        | Swedish (SV)  | Region: Swedish (SV) |
        | Spanish (ES)  | Region: Spanish (ES) |
        | German (DE)   | Region: German (DE)  |