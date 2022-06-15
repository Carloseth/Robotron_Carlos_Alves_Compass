* Test Cases *
Cenário: GET Todos os usuarios 200
    GET Endpoint /usuarios
    Validar todos os usuarios na Response
    Validar status code "200"
     
Cenário: GET Usuario especifico 200
    GET Endpoint /usuarios com id "0uxuPY0cbmQhpEz1"
    Validar o usuario com id "0uxuPY0cbmQhpEz1"
    Validar o status code "200"
    Validar mensagem "nome = fulano da silva"

Cenário: POST criar novo usuario 201
    Criar usuario dinamico
    Validar dados do usuario dinamico
    POST usuario dinamico no Endpoint /usuarios
    Validar status code "201"
    Validar mensagem "Cadastro realizado com sucesso"

Cenário: PUT editar usuario existente 200
    PUT editar usuario com id "0uxuPY0cbmQhpEz1" usando dados dinamicos
    Validar Status code "200"
    Validar mensagem "Registro alterado com sucesso"

Cenário: DELETE usuario existente 200
    DELETE usuario especifico com id "0uxuPY0cbmQhpEz1"
    Validar status code "200"
    Validar mensagem "Registro excluido com sucesso | nenhum registro excluido"

