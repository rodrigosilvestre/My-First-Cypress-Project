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
   When é requisitada a inserção das descrições "<nome>" "<preço>" "<usado>" do item
   Then clico no botão salvar
   Examples:
       | nome            | preço | estoque | país   | moeda | usado | dataDeModificação |  
       | baguete (pao)   | 12    | 30      | France | EUR   | No    | 08/12/1999        |  