* Settings *
Documentation   Keywords e variaveis para Ações do endpoint /produtos   

* Keywords *
POST Endpoint /produtos
    &{header}               Create Dictionary    Authorization=${token_auth}
    ${payload}              Create Dictionary    nome=Proces      preco=900  descricao=i7     quantidade=100
    ${response}             POST On Session      serverest          /produtos   data=&{payload}      headers=&{header}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}
DELETE Endpoint /produtos
    &{header}               Create Dictionary      Authorization=${token_auth}
    ${response}             DELETE On Session      serverest          /produtos/${id_produto}        headers=&{header}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}
    
Validar Ter Criado Produto
    Should Be Equal         ${response.json()["message"]}        Cadastro realizado com sucesso
    Should Not Be Empty     ${response.json()["_id"]}

Criar Um Produto E Armazenar ID
    POST Endpoint /produtos
    Validar Ter Criado Produto
    ${id_produto}            Set Variable           ${response.json()["_id"]}
    Log To Console           ${id_produto}
    Set Global Variable      ${id_produto}