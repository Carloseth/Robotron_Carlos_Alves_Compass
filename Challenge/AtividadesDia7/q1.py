import json
def Q1():
    with open("./Challenge/AtividadesDia7/Dados/json1.json") as partida:
        #Parse para dicionario
        partida_manipulavel = json.load(partida)
        #Print Json inteiro em formato dicionario
        print(partida_manipulavel)
Q1()