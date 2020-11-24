#language: en
Feature: Modificar itens da lista do banco de dados
   COMO organizador do banco de dados
   DESEJO modificar um item da minha lista
   PARA que eu possa atualiza meu banco de dados

   #Regra: É possivel editar os itens da tabela
   #Regra: Todos os atributos dos itens podem ser modificado, com exceção da cor
   #Regra: Tem que haver pelo menos um item na tabela
   #Regra: Todo item adicionado tem que ter uma descrição
   #Regra: Validação do item modificado na tabela
   Scenario Outline: Editando um item da lista do banco de dados
      Given que exista item na lista do banco de dados
      When modifico o nome do item usando o valor "<item>"
      And modifico o valor do item "<valor>"
      And modifico o país do item "<país>"
      And modifico a moeda que representa o item "<moeda>"
      And modifico a data em que o item foi modificado usando "<data>"
      And clico no botão salvar
      Then verifico se o item foi realmente editado "<item>" "<valor>" "<país>" "<moeda>" "<data>"
      Examples:
         | item           | valor | país     | moeda   |   data     |
         | Solutis (best) | 999   | Brazil   | BRL     | 28/11/2020 |