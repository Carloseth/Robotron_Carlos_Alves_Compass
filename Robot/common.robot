* Settings *
Documentation   commom.robot
Library     RequestsLibrary
# Library     OperatingSystem

* Keywords *
Validar Status Code "${statuscode}"
    Should Be True  ${response.status_code}     "${statuscode}"

# Import JSON
#     [Arguments]             ${produtos.json}
#     ${arquivo}              Get File    ${EXECDIR}/${produtos.json}
#     ${data}                 Evaluate    json.loads('''${arquivo}''')        json
#     [return]                ${data}