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