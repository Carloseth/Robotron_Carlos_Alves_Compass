* Settings *
Documentation   Keywords e variaveis para Ações do endpoint /login

* Variables *
${email_para_login}             fulano@qa.com
${password para login}          teste



* Keywords *
POST Endpoint /login
    ${payload}              Create Dictionary   email=${email_para_login}       password=${password para login}
    ${response}             POST On Session      serverest       /login  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

# Validar Status Code "${statuscode}"
#     Should Be True          ${response.status_code} == ${statuscode}
Validar Ter logado
    Should Be Equal         ${response.json()["message"]}        Login realizado com sucesso
    Should Not Be Empty     ${response.json()["authorization"]}

Fazer login e Armazenar Token
    POST Endpoint /login
    Validar Ter logado
    ${token_auth}           Set Variable        ${response.json()["authorization"]}
    Log To Console          Token Salvo: ${token_auth}
    Set Global Variable     ${token_auth}