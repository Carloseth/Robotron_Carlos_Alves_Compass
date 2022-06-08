import json
def Q3():
    with open("./Challenge/AtividadesDia7/Dados/json1.json") as partida:
        #Parse para dicionario
        partida_manipulavel = json.load(partida)
        return partida_manipulavel
partida_retornada = Q3()
copa = partida_retornada["copa-do-brasil"][0]
estadio = copa["estadio"]["nome_popular"]
placar = copa["placar"]
status = copa["status"]
print(f'O jogo ocorreu no estadio: {estadio}')
print(f'O placar foi: {placar}')
print(f'O status atual, do jogo é: {status}')