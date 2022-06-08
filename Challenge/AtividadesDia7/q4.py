import json
def Q4():
    with open("./Challenge/AtividadesDia7/Dados/json1.json") as time_Visitante:
        visitante_manipulavel = json.load(time_Visitante)
        return visitante_manipulavel
visitante_retornado = Q4()
copa = visitante_retornado["copa-do-brasil"][0]

visitante = copa["time_visitante"]
print(visitante)