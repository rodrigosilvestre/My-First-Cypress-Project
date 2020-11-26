#language: en
Feature: Excluir itens que estão sendo adicionados na lista do banco de dados
   COMO organizador do banco de dados
   DESEJO excluir itens da minha lista usando a lixeirinha
   PARA que que eu possa retirar um elemento do meu banco de dados

   #Regra: É possivel adicionar itens na tabela
   #Regra: Tem que haver pelo menos um item sendo criado
   #Regra: Tem que haver pelo menos um item selecionado
   #Regra: É possivel excluir qualquer item da tabela
   #Regra: É possivel selecionar qualquer item da tabela

   Scenario: Excluir uma item que esta sendo adicionado na lista, usando o icone da lixeira
   Given que eu esteja dentro do menu de adicionar
   When um item está em criação
   Then aperto no icone da lixeira ao lado do item que desejo excluir