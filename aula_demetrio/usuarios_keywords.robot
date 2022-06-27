* Settings *
Documentation   Keywords e variaveis para Ações do endpoint /usuarios

* Variables *
${nome_do_usuario}      moura pano
${senha_do_usuario}     judaspriest123
${email_do_usuario}     judaspriesteste@gmail.com

* Keywords *
GET Endpoint /usuarios
    ${response}             GET On Session      serverest       /usuarios
    Set Global Variable     ${response}

POST Endpoint /usuarios
    &{payload}              Create Dictionary   nome=${nome_do_usuario}  email=${email_do_usuario}  password=${senha_do_usuario}    administrador=true
    ${response}             POST On Session      serverest       /usuarios  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}
    
PUT Endpoint /usuarios
    &{payload}              Create Dictionary   nome=carlos   email=teste@gmail.com  password=teste    administrador=true
    ${response}             PUT On Session      serverest       /usuarios/KB6xeNSHbWBVjW03  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Delete Endpoint /usuarios
    ${response}             Delete On Session      serverest    /usuarios/3EXdMgip74k1Hmp1
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}