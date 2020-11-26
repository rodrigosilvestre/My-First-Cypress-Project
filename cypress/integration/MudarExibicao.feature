#language: en

Feature: Mudar a exibiçao das categorias na tabela usando Column Settings
    COMO usuario do site
    DESEJO mudar a exibiçao das categorias
    PARA que eu possa remover informações desnecessarias da tela

    #Regra: É preciso que o usuario possa usar a ferramenta (filtro) do site
    #Regra: Tem que haver pelo menos um item na lista

    Scenario: Filtrando a lista do banco de dados
     Given que eu esteja dentro do site
     When clico no menu filtro de exibiçao
     And escolho as categorias que eu quero exibir
     Then confirmo minhas escolhas