import json
def Q7():
    with open("./Challenge/AtividadesDia7/Dados/json2.json") as  campeonato:
        campeonato_manipulavel= json.load(campeonato)
        return campeonato_manipulavel
campeonatoRetornado = Q7()
for keys in campeonatoRetornado:
    print(keys)