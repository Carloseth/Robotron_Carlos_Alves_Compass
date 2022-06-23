* Settings *
Documentation       Testes complementares, aumentando a cobertura de testes na API SERVEREST
Library     ResquestsLibrary    
Library     FakerLibrary  
#Sessão de variaveis
* Variables *
${HOST}     https://serverest.dev

#Sessão de casos de testes
* Test Cases *
Testar produto na API SERVEREST
    [tags]  produtoSucesso
    criar sessao
    Cadastrar um produto
#Sessão de keywords personalizadas
* Keywords *

criar sessao
    Create Session      serverest         ${HOST}

Cadastrar um produto
    &{payload}                  Create Dictionary   preco=
    ${response}                 POST On Session     
    Set Global Variable         ${response}
    expected_status=400