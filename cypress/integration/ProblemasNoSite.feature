#language: en
Feature: explorando falhas
   COMO organizador do banco de dados
   DESEJO inspecionar o site a procura de falhas
   PARA que eu possa ver quais são as falhas do sistema

   #Regra: É possivel adicionar itens na tabela

   Scenario Outline: Testando se a lista aceita numeros no lugar do nome do item, dentro da funcionalidade adicionar
   Given dentro do site
   And clico no botão Add
   When preencho incorretamente o nome "<nome>" usando numeros
   And preencho corretamento o campo do preço usando "<preco>"
   Then clico no botão salvar
   And valido se um elemento com numeros no lugar do nome foi criado "<nome>"
   Examples:
       | nome | preco |
       | 1231 | 2     |

   Scenario Outline: Testando se a lista aceita letras no lugar do preço do item, dentro da funcionalidade adicionar
   Given dentro do site
   And clico no botão Add
   When preencho corretamento o campo do nome usando "<nome>"
   And preencho incorretamente o preço "<preco>" usando letras
   Then clico no botão salvar
   And valido se preço recebeu um valor 0.00 por conta de letras em seu campo
   Examples:
       | nome           | preco        |
       | Lixeira (lixo) | Gamba Fedido |

   Scenario Outline: Testando se a lista aceita letras no lugar do estoque do item, dentro da funcionalidade adicionar
   Given dentro do site
   And clico no botão Add
   When preencho corretamento o campo do nome "<nome>" e preço "<preco>"
   And preencho incorretamente o estoque "<estoque>" usando letras
   Then clico no botão salvar
   And valido se estoque recebeu o valor igual a uma string NaN
   Examples:
       | nome       | preco | estoque      | 
       | Pilha (PI) | 20    | Vinte e dois |

   Scenario Outline: Testando se a lista aceita datas que não existem, dentro da funcionalidade adicionar
   Given dentro do site
   And clico no botão Add
   When preencho corretamento o campo do nome "<nome>" e preço "<preco>"
   And preencho incorretamente a data "<data>" usando uma data que não existe
   Then clico no botão salvar
   And valido se um elemento com data inválida foi criado "<data>"
   Examples:
       | nome           | preco | data      |
       | Solutis (Best) | 2     | 22/98/2878|
