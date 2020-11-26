#language: en
Feature: Adcionar itens na lista do banco de dados
   COMO organizador do banco de dados
   DESEJO adicionar itens na minha lista
   PARA que eu possa atualizar meu banco de dados

   #Regra: É possivel adicionar itens na tabela
   #Regra: É nescessario que o item adicionado tenha um nome
   #Regra: É nescessario que o item adicionado tenha um valor
   #Regra: Validação do item adicionado na tabela

   Scenario Outline: Adicionando um elemento na lista
   Given item valido 
   When é requisitada a inserção das descrições "<nome>" "<preço>" "<estoque>" "<país>" "<moeda>" "<dataDeModificação>" do item
   And excluo os novos campos que apareceram porque a tecla ENTER foi usada
   Then clico no botão salvar
   And valida se o item foi inserido corretamente na tabela "<nome>" "<preço>" "<estoque>" "<país>" "<moeda>" "<dataDeModificação>"
   Examples:
       | nome          | preço | estoque | país   | moeda | dataDeModificação |  
       | baguete (pao) | 12    | 30      | France | EUR   | 08/12/1999        |  