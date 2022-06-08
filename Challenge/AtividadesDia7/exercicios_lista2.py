import json
#Questão1
def Q1():
    with open("./Challenge/Exercicios_2/json1.json", encoding= "utf-8") as partida:
       #Parse para dicionario
        jsonInteiro = json.load(partida)
        return jsonInteiro
Q1()
teste = Q1()
print(teste["copa-do-brasil"]["partida_id"])

#Questão2
# def Q2():
#     with open("./Challenge/Exercicios_2/json1.json", encoding= "utf-8") as time:
#         #Parse para dicionario
#         timeVencedor = json.load(time)
        
            
    