import json
def Q2():
    with open("./Challenge/AtividadesDia7/Dados/json1.json") as partida:
        #Parse para dicionario
        partida_manipulavel = json.load(partida)
        return partida_manipulavel
partida_retornada = Q2()
copa = partida_retornada["copa-do-brasil"][0]
timeVencedor = copa["time_mandante"]["nome_popular"]
print(timeVencedor)