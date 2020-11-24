#language: en
Feature: Adcionar itens na lista do banco de dados
   COMO organizador do banco de dados
   DESEJO adicionar itens na minha lista
   PARA que eu possa atualizar meu banco de dados

   #Regra: É possivel adicionar itens na tabela
   #Regra: É nescessario que o item adicionado tenha um nome
   #Regra: É nescessario que o item adicionado tenha um valor
   #Regra: Validação do item adicionado na tabela

   Given item valido 
   Examples:
       | nomeItem        | valor |
       | baguete (pao)   | 12    |
       | controle (ctrl) | 50    |
   When é requisitada a inserção das descrições "<nome>" "<preço>" "<estoque>" "<país>" "<moeda>" "<usado>" "<dataDeModificação>" do item
   And valida se o item cumpre os requisitos de inserção
   Then valida se o item foi inserido corretamente na tabela "<nome>" "<preço>" "<estoque>" "<país>" "<moeda>" "<usado>" "<dataDeModificação>"
   Examples:
       | nome            | valor | estoque | país   | moeda | usado | dataDeModificação |  
       | baguete (pao)   | 12    | 30      | Italy  | EUR   | No    | 10/10/2010        |  
       | controle (ctrl) | 50    | 86      | Brazil | BRL   | Yes   | 08/12/1999        |
   
