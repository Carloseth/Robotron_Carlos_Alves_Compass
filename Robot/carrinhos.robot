* Settings *
Documentation   carrinhos.robot
Library     RequestsLibrary
# Library	    JSONLibrary
* Keywords
# Cadastrar Carrinho
#     &{header}               Create Dictionary    Authorization=${token_auth}    Content-Type=application/json
#     ${json}                 Import JSON  produtos.json
#     ${payload}              Set Variable    ${json}
#     ${response}             POST On Session     serverest          json=${payload}          /carrinhos     headers=&{header}
#     Log to Console          Response: ${response.content}
#     Set Global Variable     ${response}
GET Endpoint /carrinhos
    ${response}             GET On Session      serverest       /carrinhos/qbMqntef4iTOwWfg
    Log to Console          \n ${response.content}
    Set Global Variable     ${response}

Delete Endpoint /carrinhos
    ${response}             Delete On Session      serverest    /usuarios/qbMqntef4iTOwWfg
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}