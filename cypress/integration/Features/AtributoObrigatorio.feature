#language: en
Feature: tentar adcionar itens incompletos e buscar mensagem de error
   COMO organizador do banco de dados
   DESEJO adicionar itens incompletos na minha lista
   PARA que eu possa ver se o sistema apresenta mensagem de error

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
