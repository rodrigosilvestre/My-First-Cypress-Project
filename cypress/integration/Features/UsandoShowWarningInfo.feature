#language: en
Feature: Usando Show Warning & Info
   COMO usuario do site
   DESEJO mostrar quais itens possuem Warning ou Info
   PARA que eu possa identificar os itens marcados

   #Regra: É preciso que o usuario possa usar a ferramenta (Show Warning) do site
   #Regra: É preciso que o usuario possa usar a ferramenta (Show Info) do site
   Scenario: Marcando itens que possuem tags de Warning ou Info
   Given dentro do site
   When clico em Show Warning
   And clico em Show Info
   Then posso ver quais itens estão marcados