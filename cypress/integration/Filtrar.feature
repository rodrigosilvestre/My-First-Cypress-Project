#language:en

Feature: Filtrar itens
    COMO usuario do site
    DESEJO filtrar itens da tabela
    PARA que eu possa achar itens com base nas minhas preferências 

    #Regra: É preciso que o usuario possa usar a ferramenta (filtro) do site
    #Regra: Tem que haver pelo menos um item na lista

    Scenario Outline: Filtrando a lista do banco de dados
     Given que exista item na lista do banco de dados
     When clico no menu de filtros
     Then escolho os filtros de item, valor, estoque, país, moeda, usado, marcado e data "<item>" "<valor>" "<estoque>" "<país>" "<moeda>" "<usado>" "<marcado>" "<data>"
     Examples:
         | item           | valor | estoque | país     | moeda   | usado | marcado   | data       |
         | Solutis (best) | 395   | 320     | Brazil   | BRL     | Yes   | Unchecked | 28/11/2020 | 
         | Sorvete (sovt) | 120   | 100     | Ethiopia | ETB     | No    | Unchecked | 01/01/2021 | 


