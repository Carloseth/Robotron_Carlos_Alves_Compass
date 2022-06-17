#Sessão para configuração, documentação, imports de arquivos e libraries
* Settings *
Documentation   Arquivo simples para requisições HTTP em APIS
Library         RequestsLibrary

#Sessão para setagem de variáveis para utilização
* Variables *


#Sessão para criação dos cenários de teste
* Test Cases *
Cenario: GET Todos os Usuarios 200
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"

#Para treinar
Cenario: GET Produtos 200
    Criar Sessao
    GET Endpoint /produtos
    Validar Status Code "200"

#Sessão para criação de Keywords Personalizados
* Keywords *
Criar Sessao
    Create Session       serverest       https://serverest.dev

GET Endpoint /usuarios
    ${response}             GET On Session      serverest       /usuarios
    Set Global Variable     ${response}

Validar Status Code "${statuscode}"
    Should Be True          ${response.status_code} == ${statuscode}

GET Endpoint /login
    ${response}             GET On Session      serverest       /produtos
    
    Validar Status Code "${statuscode}"
    Should Be True          ${response.status_code} == ${statuscode}