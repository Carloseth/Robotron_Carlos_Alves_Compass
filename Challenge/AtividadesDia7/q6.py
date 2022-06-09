import json
def Q6():
    with open("./Challenge/AtividadesDia7/Dados/json2.json") as  campeonato:
        campeonato_manipulavel= json.load(campeonato)
        return campeonato_manipulavel
campeonatoRetornado= Q6()

fase_atual = campeonatoRetornado["fase_atual"]
for chave, valor in fase_atual.items():
    print(chave, ":", valor)
    
edicao_atual = campeonatoRetornado["edicao_atual"]
for chave, valor in edicao_atual.items():
    print(chave, ":", valor)

rodada_atual = campeonatoRetornado["rodada_atual"]
for chave, valor in rodada_atual.items():
    print(chave, ":", valor)