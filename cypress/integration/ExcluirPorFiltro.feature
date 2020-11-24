#language: en
Feature: Modificar itens da lista do banco de dados
   COMO organizador do banco de dados
   DESEJO excluir um iten da minha lista usando um filtro
   PARA que eu possa retirar todos os item usando a moeda EUR do meu banco de dados

   #Regra: Tem que haver pelo menos um item na tabela
   #Regra: Tem que haver pelo menos um item usando a moeda EUR
   #Regra: É possivel excluir todos os itens da tabela
   #Regra: É possivel selecionar todos os itens da tabela
   #Regra: Validação do item excluido na tabela

   Scenario Outline: Excluindo todos os itens da lista que usem a moeda EUR, usando o filtro de pesquisa
   Given que exista item na lista do banco de dados
   And que exista um item na lista com o tipo de moeda "<moeda>"
   When eu abro o menu de filtros
   And seleciono o tipo de moeda "<moeda>" que eu quero filtrar
   And seleciono todos os item com o mesmo tipo de moeda
   And peço para o site excluir todos os item selecionados
   Then verifico se todos os itens selecionados foram exlcluidos
    Examples:
        |moeda   |
        |EUR     |