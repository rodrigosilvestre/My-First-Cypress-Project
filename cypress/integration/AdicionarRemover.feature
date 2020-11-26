Feature: Adcionar e remover itens na lista do banco de dados
   COMO organizador do banco de dados
   DESEJO adicionar itens na minha lista e logo após remove-los
   PARA que eu possa excluir algo que não deveria ser criado

   #Regra: É possivel adicionar itens na tabela
   #Regra: É possivel excluir itens na tabela
   #Regra: É possivel excluir itens selecionados na tabela
   #Regra: É nescessario que o item adicionado tenha um nome
   #Regra: É nescessario que o item adicionado tenha um valor
   #Regra: Validação do item adicionado na tabela

   Scenario Outline: Adicionando um elemento na lista
   Given item valido 
   When é requisitada a inserção das descrições "<nome>" "<preço>" "<estoque>" "<país>" "<moeda>" "<dataDeModificação>" do item
   And excluo os novos campos que apareceram porque a tecla ENTER foi usada
   Then clico no botão salvar
   Then excluo o item que foi criado

   Examples:
       | nome                   | preço | estoque | país   | moeda | dataDeModificação |  
       | Best Company (solutis) | 10000 | 1       | Brazil | BRL   | 28/11/2020        |
       | Vaga eh minha (vaga)   | 10000 | 1       | France | EUR   | 28/11/2020        |  