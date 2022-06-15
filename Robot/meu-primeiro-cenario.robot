* Test Cases *
Cenário: POST Login Usuario 400
    POST Endpoint /login
    Validar dados do usuario
    Validar status code 400
    Validar mensagem "Email e/ou senha inválidos"
    Validar mensagem "Email e/ou senha não encontrados na base de dados, por favor, cadastre-se"