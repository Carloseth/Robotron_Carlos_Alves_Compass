* Settings *
Documentation   USUARIOS.ROBOT
Library     RequestsLibrary
* Keywords *
Realizar Login Com Email Errado
    &{payload}              Create Dictionary    email=${Email_errado}  password=teste
    ${response}             POST On Session      serverest      /login  data=&{payload}     expected_status= 401
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Realizar login
    &{header}               Create Dictionary    Authorization=${token_auth}
    &{payload}              Create Dictionary    email=${email_do_usuario}  password=${senha_do_usuario}
    ${response}             POST On Session      serverest      /login  data=&{payload} 
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Armazenar Token
    Validar Ter Logado
    ${token_auth}           Set Variable        ${response.json()["authorization"]}
    Log To Console          Token Salvo: ${token_auth}
    Set Global Variable     ${token_auth}