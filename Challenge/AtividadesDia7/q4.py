import json
def Q4():
    with open("./Challenge/AtividadesDia7/Dados/json1.json") as time_Visitante:
        dict_Visitante = json.load(time_Visitante)
        return dict_Visitante
visitante_retornado = Q4()
copa = visitante_retornado["copa-do-brasil"][0]

visitante = copa["time_visitante"]
print(visitante)