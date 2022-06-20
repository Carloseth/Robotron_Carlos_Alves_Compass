#Sessão para configuração, documentação, imports de arquivos e libraries
* Settings *
Documentation   Arquivo simples para requisições HTTP em APIS
Library         RequestsLibrary

#Sessão para setagem de variáveis para utilização
* Variables *


#Sessão para criação dos cenários de teste
* Test Cases *
Cenario 1: GET Todos os Usuarios 200
    [tags]      GET
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"
    # Validar Quantidade "${30}"
    Printar Nome Usuario
    Printar Email Usuario
    Printar Senha Usuario
    Printar ID Usuario
Cenario 2: POST Cadastrar usuario 201
    [tags]      POST
    Criar Sessao
    POST Endpoint /usuarios
    Validar Status Code "201"
    Validar Se Mensagem Contem "sucesso"
Cenario 3: PUT Editar usuario 200
    [tags]      PUT
    Criar Sessao
    PUT Endpoint /usuarios
    Validar Status Code "200"
Cenario 4: Delete Deletar Usuario 200
    [tags]      DELETE
    Criar Sessao
    Delete Endpoint /usuarios
    Validar Status Code "200"
#Sessão para criação de Keywords Personalizados
* Keywords *
Criar Sessao
    Create Session       serverest       https://serverest.dev

GET Endpoint /usuarios
    ${response}             GET On Session      serverest       /usuarios
    Set Global Variable     ${response}

POST Endpoint /usuarios
    &{payload}              Create Dictionary   nome=uasdadsuhaasdasassqfw  email=testandoasdooooo@gmail.com  password=gatoalado123    administrador=true
    ${response}             POST On Session      serverest       /usuarios  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

PUT Endpoint /usuarios
    &{payload}              Create Dictionary   nome=uasduhaasdasassqfw   email=testandinho@gmail.com  password=cachorrinho123    administrador=true
    ${response}             PUT On Session      serverest       /usuarios/3EXdMgip74k1Hmp1  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Delete Endpoint /usuarios
    ${response}             Delete On Session      serverest    /usuarios/3EXdMgip74k1Hmp1
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Validar Status Code "${statuscode}"
    Should Be True          ${response.status_code} == ${statuscode}

# Validar Quantidade "${quantidade}"
#     Should Be Equal     ${response.json()["quantidade"]}        ${quantidade}

Validar Se Mensagem Contem "${palavra}"
    Should Contain      ${response.json()["message"]}           ${palavra}

Printar Nome Usuario
    Log To Console      Nome: ${response.json()["usuarios"][0]["nome"]}

Printar Email Usuario
    Log To Console      Email: ${response.json()["usuarios"][0]["email"]}

Printar Senha Usuario
    Log To Console      Senha: ${response.json()["usuarios"][0]["password"]}

Printar ID Usuario
    Log To Console      ID: ${response.json()["usuarios"][0]["_id"]}

