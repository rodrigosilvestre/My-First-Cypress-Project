#language:en

Feature: Filtrar itens
   COMO usuario do site
   DESEJO filtrar itens da tabela
   PARA que eu possa achar itens com base nas minhas preferências 

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


