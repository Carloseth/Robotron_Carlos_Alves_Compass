* Settings *
Documentation   produtos.robot
Library     RequestsLibrary
* Keywords *
GET Endpoint /produtos
    ${response}             GET On Session      serverest       /produtos
    Log to Console          \n ${response.content}
    Set Global Variable     ${response}
POST Endpoint /produtos
    &{header}               Create Dictionary   Authorization=${token_auth}
    ${payload}              Create Dictionary    nome=whisky      preco=50  descricao=bebida     quantidade=10
    ${response}             POST On Session      serverest          /produtos   data=&{payload}      headers=&{header}
    Set Global Variable     ${response}
    &{produtos}             Create Dictionary

Post Endpoint /produtos Com Preco Float
    &{header}               Create Dictionary   Authorization=${token_auth}
    ${payload}              Create Dictionary    nome=condicionador      preco=49.90  descricao=pra lavar o cabelo     quantidade=10
    ${response}             POST On Session      serverest          /produtos   data=&{payload}      headers=&{header}  expected_status=400
    Set Global Variable     ${response}
    &{produtos}             Create Dictionary
