#language: en
Feature: Modificar itens da lista do banco de dados
   COMO organizador do banco de dados
   DESEJO excluir um iten da minha lista
   PARA que que eu possa retirar um elemento do meu banco de dados

   #Regra: Tem que haver pelo menos um item na tabela
   #Regra: Tem que haver pelo menos um item usando a moeda EUR
   #Regra: É possivel excluir todos os itens da tabela
   #Regra: É possivel selecionar todos os itens da tabela
   #Regra: É possivel excluir apenas os itens selecionados
   #Regra: O índice de itens passiveis de exclusão começa a partir de 1

   Scenario Outline: Excluir uma linha da lista de itens do banco de dados
   Given que haja pelo menos um elemento na lista
   When eu seleciono os itens que eu quero excluir "<indiceExclusao>" "<indiceExclusao2>" "<indiceExclusao3>"
   Then aperto no botão de excluir
   Examples:
       | indiceExclusao | indiceExclusao2 | indiceExclusao3 |
       |   1            | 2               | 12              |
