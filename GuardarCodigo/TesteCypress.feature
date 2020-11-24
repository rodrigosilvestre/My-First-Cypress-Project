#language: en
Feature: Organizar itens na lista TO DO
   COMO organizador de lista TO DO
   DESEJO organizar os itens na minha lista
   PARA que eu tenha controle sobre o que preciso fazer

   #Regra: Todo item tem uma descrição
   Scenario Outline: Novo item <resultado> à lista TO DO
      Given que não exista nenhum item na lista TO DO
      When tento adicionar o item "<novo item>"
      Then o item "<resultado>"      
      Examples:
         | novo item           | resultado        | 
         |                     | não é adicionado | 
         | Fazer projeto final | é adicionado     |

   #Regra: É possível ter itens com a mesma descrição
   #Regra: É possível excluir itens da lista TO DO
   #Regra: É possível editar a descrição de itens da lista TO DO
   #Regra: É possível marcar como completo um item da lista


   Scenario Outline: Alterar a descrição de um item da minha lista TO DO
      Given que exista um item na lista TO DO
      When tento alterar um "<item>"
      Then o item "<resultado>"      
      Examples:
         | novo item                 | resultado        | 
         | Não fazer o projeto final | não é adicionado | 
         | Fazer projeto final       | é adicionado     |
