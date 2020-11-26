#language: pt
Funcionalidade: Entrar em contato
   COMO criador de conteúdo do blog T
   DESEJO entrar em contato com os autores do blog FlexiBlog
   PARA fazer uma parceria. 

    #Regra: É possível usar o site em modo escuro
    Cenário: Mudar o site para o modo escuro
      Dado que visite o site
      Quando tento alterar para modo escuro 
      Então o site fica em modo escuro
    #Regra: É necessário preencher o Name para enviar a mensagem
    #Campo obrigatório
    Esquema do Cenário: Preencher o nome
      Dado que visite o site
      E não tenha nenhum dado em Name
      E o email "<email>" e assunto "<assunto>" estejam preenchidos
      Quando preencho o nome com "<nome>"
      E tento enviar
      Então o nome "<nome>" é "<conclusao>"
      Exemplos:
        | nome    | email         | assunto        | conclusao |
        |         | test@mail.com | Fazer Parceria | inválido  |
        | Marenna | test@mail.com | Fazer Parceria | válido    |
    #Regra: Company Name é opcional
    #Campo não obrigatório
    Esquema do Cenário: Preencher nome da companhia
      Dado que visite o site
      E não tenha nenhum dado em Company Name
      E o email "<email>", nome "<nome>" e assunto "<assunto>" estejam preenchidos
      Quando preencho o nome da companhia "<empresa>"
      E tento enviar
      Então o nome da companhia "<empresa>" é "<conclusao>"
      Exemplos:
        | nome    | email         | assunto        | empresa | conclusao |
        | Marenna | test@mail.com | Fazer Parceria |         | válido    |
        | Marenna | test@mail.com | Fazer Parceria | Solaryx | válido    | 
    #Regra: É necessário preencher o Email para enviar a mensagem
    #Campo obrigatório
    Esquema do Cenário: Preencher o email
      Dado que visite o site
      E não tenha dado em Email
      E o assunto "<assunto>" e nome "<nome>" estejam preenchidos
      Quando preencho o email "<email>"
      E tento enviar
      Então o email "<email>" é "<conclusao>"
      Exemplos:
        | nome    | email         | assunto        | conclusao |
        | Marenna |               | Fazer Parceria | inválido  |
        | Marenna | test@mail.com | Fazer Parceria |  válido   |
    #Regra: Email precisa do caractere especial @
    #Campo obrigatório
    Esquema do Cenário: Preencher o email corretamente
      Dado que visite o site
      E o Email esteja vazio
      E o nome "<nome>" e assunto "<assunto>" estejam preenchidos
      Quando preencho o email "<email>"
      E tento enviar
      Então é apresentada uma mensagem de "<alert>"
      Exemplos:
        | nome    | email         | assunto        | alert       |
        | Marenna | test12.com    | Fazer Parceria | alerta      |
        | Marenna | test@mail.com | Fazer Parceria | confirmação |
    #Regra: Phone Number é opcional
    #Campo não obrigatório
    Esquema do Cenário: Preencher o número de telefone
      Dado que visite o site
      E nome "<nome>", email "<email>", assunto "<assunto>" estejam preenchido
      E não tenha dado em Phone Number
      Quando preencho com o número "<numero>"
      E tento enviar
      Então o número "<numero>" é "<conclusao>"
      Exemplos:
        | nome    | email         | assunto        | numero       | conclusao |
        | Marenna | test@mail.com | Fazer Parceria |              | válido    |
        | Marenna | test@mail.com | Fazer Parceria | 555 555-5555 | válido    |
    #Regra: Phone Number aceita letra e número
    #Campo não obrigatório
    Esquema do Cenário: Número de telefone aceita letras ou números
      Dado que visite o site
      E Phone number esteja vazio
      E o assunto "<assunto>", email "<email>" e nome "<nome>" estejam preenchido
      Quando preencho com o número de telefone "<numero>"
      E tento enviar 
      Então o telefone "<numero>" é "<conclusao>"
      Exemplos:
        | nome    | email         | assunto        | numero       | conclusao |
        | Marenna | test@mail.com | Fazer Parceria | 111 222-3333 | válido    |
        | Marenna | test@mail.com | Fazer Parceria | abc def ghij | válido    |
    #Regra: É necessário preencher o Subject para enviar a mensagem 
    #Campo obrigatório
    Esquema do Cenário: Preencher o assunto
      Dado que visite o site
      E o email, assunto e nome estejam preenchidos
      E não tenha nenhum dado em Subject  
      Quando preencho campo com o número "<assunto>"
      E tento enviar
      Então o 
      "<assunto>" é "<conclusao>"
      Exemplos:
        | nome    | email         | assunto        | conclusao |
        | Marenna | test@mail.com |                | inválido  |
        | Marenna | test@mail.com | Fazer Parceria | válido    |
    #Regra: Your Message é opcional
    #Campo não obrigatório
    Esquema do Cenário: Escrever sua mensagem
      Dado que visite o site
      E o nome, assunto e email estejam preenchidos
      E não tenha dado em Your Message
      Quando preencho campo com o número "<mensagem>"
      E tento enviar
      Então o campo "<mensagem>" é "<conclusao>"
      Exemplos:
        | nome    | email         | assunto        | mensagem                                                                             | conclusao |
        | Marenna | test@mail.com | Fazer Parceria |                                                                                      | válido    |
        | Marenna | test@mail.com | Fazer Parceria | Olá! Sou produtora de contéudo no blog T, gostaria de fazer uma pareceira com vocês. | válido    |