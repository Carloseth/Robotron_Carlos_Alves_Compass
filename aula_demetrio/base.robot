#Sessão para configuração, documentação, imports de arquivos e libraries
* Settings *
Documentation   Arquivo simples para requisições HTTP em APIS
Library         RequestsLibrary
Resource        ./usuarios_keywords.robot
Resource        ./login_keywords.robot
Resource        ./produtos_keywords.robot

#Sessão para setagem de variáveis para utilização
* Variables *
${nome_do_usuario}      moura pano
${senha_do_usuario}     judaspriest123
${email_do_usuario}     judaspriesteste@gmail.com
#Sessão para criação dos cenários de teste
* Test Cases *
Cenario 1: GET Todos os Usuarios 200
    [tags]      GET
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"
    Validar Quantidade "${1}"
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
Cenario 5: Post realizar login 200
    [tags]      POSTLOGIN
    Criar Sessao
    POST Endpoint /login
    Validar Status Code "200"
Cenario 6: POST criar produto 201
    [tags]  POSTPRODUTO
    Criar Sessao
    Fazer login e Armazenar Token
    Post Endpoint /produtos
    Validar Status Code "201"
Cenario 7: DELETE Excluir Produto 200
    [tags]  DELETEPRODUTO
    Criar Sessao
    Fazer login e Armazenar Token
    Criar Um Produto E Armazenar ID
    Delete Endpoint /produtos
    Validar Status Code "200"

Cenario: GET produtos
    [tags] getproduto
    GET Endpoint /produtos

#Sessão para criação de Keywords Personalizados
* Keywords *
Criar Sessao
    Create Session       serverest       http://localhost:3000/

Validar Status Code "${statuscode}"
    Should Be True          ${response.status_code} == ${statuscode}
Validar Quantidade "${quantidade}"
    Should Be Equal     ${response.json()["quantidade"]}        ${quantidade}

Validar Se Mensagem Contem "${palavra}"
    Should Contain      ${response.json()["message"]}           ${palavra}