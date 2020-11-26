#language: en
Feature: Mudar a região do site para English (GB), English (GB), Finnish (FI), Swedish (SV), Spanish (ES) ou German (DE) 0
    COMO usuario do site
    DESEJO alterar o idioma
    PARA que eu possa entender o idioma
    #Regra: É preciso que o usuario possa alterar a região do site
    #Regra: É nescessario uma validação para ver se o idioma foi realmente alterado

    Scenario Outline: Alterando a linguagem 
    Given dentro do site
    When escolho um idioma "<idioma>"
    Then verifico se o idioma "<apresentacao>" foi alterado
    Examples:
        | idioma        | apresentacao         |
        | English (GB)  | Region: English (GB) |
        | English (US)  | Region: English (US) |
        | Finnish (FI)  | Region: Finnish (FI) |
        | Swedish (SV)  | Region: Swedish (SV) |
        | Spanish (ES)  | Region: Spanish (ES) |
        | German (DE)   | Region: German (DE)  |