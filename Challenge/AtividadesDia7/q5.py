import json
def Q4():
    with open("./Challenge/AtividadesDia7/Dados/json2.json") as campeonato :
        campeonato_manipulavel= json.load(campeonato)
        return campeonato_manipulavel
campeonatoRetornado= Q4()
print(campeonatoRetornado)