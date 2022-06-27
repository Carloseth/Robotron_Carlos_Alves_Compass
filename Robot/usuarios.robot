* Settings *
Documentation   usuarios.robot
Library     RequestsLibrary

* Keywords *
Cadastrar Usuario
    &{payload}              Create Dictionary   nome=${nome_do_usuario}  email=${email_do_usuario}  password=${senha_do_usuario}    administrador=true
    ${response}             POST On Session      serverest       /usuarios  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}
Editar Usuario
    &{payload}              Create Dictionary   nome=usuario_editado   email=${email_do_usuario}  password=${senha_do_usuario}    administrador=true
    ${response}             PUT On Session      serverest       /usuarios/KB6xeNSHbWBVjW03  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}
Deletar usuario
    ${response}             Delete On Session      serverest    /usuarios/P93fUh9pvrT4tmX2
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}
