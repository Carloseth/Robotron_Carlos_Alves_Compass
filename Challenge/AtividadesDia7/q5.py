import json
def Q5():
    with open("./Challenge/AtividadesDia7/Dados/json2.json") as campeonato :
        campeonato_manipulavel= json.load(campeonato)
        return campeonato_manipulavel
campeonatoRetornado= Q5()

print(campeonatoRetornado)