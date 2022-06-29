* Settings *
Documentation   Keywords e variaveis Para geração de Validacao
Library     FakerLibrary    locale=pt/br

* Keywords *
Criar Dados Para Usuario Valido
    ${nome}     FakerLibrary.Name
    ${email}    FakerLibrary.Email
    ${payload}  Create Dictionary   nome=${nome}    email=${email}  password=senha123   administrador=true
    Log To Console  ${payload}
    [Return]        ${payload}