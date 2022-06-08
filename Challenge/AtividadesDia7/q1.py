import json
#Questão1
def Q1():
    with open("./Challenge/AtividadesDia7/Dados/json1.json", encoding= "utf-8") as partida:
       #Parse para dicionario
        teste = json.load(partida)
        print(teste)
Q1()

