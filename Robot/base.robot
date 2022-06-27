#Meu cenario de teste da API SERVEREST para o challenge da SPRINT 5.
* Settings *
Documentation   CENARIOS DE TESTES DO CHALLENGE
Library         RequestsLibrary
# Library	        JSONLibrary
Resource        ./produtos.robot
Resource        ./login.robot
Resource        ./carrinhos.robot
Resource        ./usuarios.robot
Resource        ./common.robot
* Variables *
${token_auth}           Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImZ1bGFub0BxYS5jb20iLCJwYXNzd29yZCI6InRlc3RlIiwiaWF0IjoxNjU2MzM0OTAxLCJleHAiOjE2NTYzMzU1MDF9.wh-pjNOCohBtc-kbu2ulJDc8uTghqcgglggUjESLmOY
${HOST}     http://localhost:3000/
${Email_errado}     carlos@gmail.com
${Senha_certa}      teste
${nome_do_usuario}      testeusuario
${senha_do_usuario}     teste
${email_do_usuario}     fulano@qa.com 
* TEST CASES *
Cenario: Produto com preco Float
    [Tags]  postprodutofloat
    Criar Sessao
    Post Endpoint /produtos Com Preco Float
    Validar Status Code "400"
Cenario: GET carrinho(funcionando)
    [tags]  getcarrinho
    Criar Sessao
    GET Endpoint /carrinhos
Cenario:POST criar produto 201(funcionando)
    [tags]  postproduto
    Criar Sessao
    Post Endpoint /produtos
    Validar Status Code "201"
Cenario: GET produtos(funcionando)
    [tags]  getproduto
    Criar Sessao
    GET Endpoint /produtos
cenario: Deletar Usuario Cadastrado(funcionando)
    [tags]  deletar
    Criar Sessao
    Deletar usuario
Cenario: Usuario Login 401 (funcionando)
    [tags]  login401
    Criar Sessao 
    Realizar Login Com Email Errado
    Validar Status Code "401"
    Validar Se Mensagem Contem "Email e/ou senha inválidos"
Cenario: Cadastro Usuario(funcionando)
    [tags]  cadastrarusuario
    Criar Sessao
    Cadastrar Usuario
    Validar Status Code "201"
    Validar Se Mensagem Cadastro Contem "sucesso"
Cenario: Realizar o Login Com Dados Validos(funcionando)
    [tags]  login200
    Criar Sessao
    Realizar login
    Validar Status Code "200"
    Validar Ter Logado
    Armazenar Token
# Cenario: Cadastrar O Carrinho do Usuario
#     [tags]  cadastrarcarrinho
#     Criar Sessao
#     Cadastrar Carrinho
#     Validar Status Code "201"
Cenario: Consultar Carrinho Cadastrado Por Usuario(funcionando)
    [tags]  consultacarrinho
    Criar Sessao
    GET Carrinho
    Validar Status Code "200"
* Keywords *

Criar Sessao
    Create Session      serverest               ${HOST}

Validar Se Mensagem Contem "Email e/ou senha inválidos"
    Should Be Equal         ${response.json()["message"]}     Email e/ou senha inválidos
Validar Se Mensagem Cadastro Contem "sucesso"
    Should Be Equal         ${response.json()["message"]}     Cadastro realizado com sucesso

Validar ter logado
    Should Be Equal         ${response.json()["message"]}       Login realizado com sucesso
    Should Not Be Empty     ${response.json()["authorization"]}