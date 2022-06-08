import json
def retornarJson():
    with open("./Aprendendo_Python/teste.json", encoding= "utf-8" ) as json_normal:
        #parse Json para dicionario com Load.
        json_manipulavel = json.load(json_normal)
        return json_manipulavel 
#podemos guardar o json manipulavel em uma variavel.
json_retornado = retornarJson()
#Agora para percorrer o Json é simples
#Por exemplo: pra pegar a "partida_id":
print(json_retornado['status'])

#Se quiser pegar algo que está dentro dos dados
#Armazenar em uma variavel os dados e manipular pela variavel
dados = json_retornado["dados"]
print(dados["departamento"])

#Ou percorrer de maneira direta e geral
# print(json_retornado["dados"]["departamento"])

#Para armazenar os valores dentro de uma variavel: 
telefone = json_retornado["dados"]["telefone"]
print(telefone)