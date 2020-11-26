#language: en
Feature: tentar adcionar itens incompletos e buscar mensagem de error
   COMO organizador do banco de dados
   DESEJO adicionar itens incompletos na minha lista
   PARA que eu possa ver se o sistema apresenta mensagem de error

   #Regra: É possivel adicionar itens na tabela
   Scenario Outline: Adicionando um elemento sem nome na lista
   Given item sem nome
   When é requisitada a inserção das descrições "<preço>" do item
   Then clico no botão salvar
   And validar se a mensagem de error apareceu em cima do campo de nome
   Examples:
        | preço |
        | 12    |

   #Regra: É possivel adicionar itens na tabela
   Scenario Outline: Adicionando um elemento sem preço na lista
   Given item sem preço
   When é requisitada a inserção das descrições "<nome>" do item
   Then clico no botão salvar
   And validar se a mensagem de error apareceu em cima do campo de valor
   Examples:
       | nome          |
       | baguete (pao) |
