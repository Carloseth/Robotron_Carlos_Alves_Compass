* Settings *
Documentation   commom.robot

Library     OperatingSystem

* Keywords *
Validar Status Code "${statuscode}"
    Should Be True  ${response.status_code}     "${statuscode}"

Criar Sessao
    Create Session      serverest               ${HOST}

Validar Se Mensagem Contem "Email e/ou senha inválidos"
    Should Be Equal         ${response.json()["message"]}     Email e/ou senha inválidos
Validar Se Mensagem Cadastro Contem "sucesso"
    Should Be Equal         ${response.json()["message"]}     Cadastro realizado com sucesso

Validar ter logado
    Should Be Equal         ${response.json()["message"]}       Login realizado com sucesso
    Should Not Be Empty     ${response.json()["authorization"]}
# Import JSON
#     [Arguments]             ${produtos.json}
#     ${arquivo}              Get File    ${EXECDIR}/${produtos.json}
#     ${data}                 Evaluate    json.loads('''${arquivo}''')        json
#     [return]                ${data}