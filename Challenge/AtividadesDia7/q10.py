from email.mime import base
import pandas as pd
baseDeDados = pd.read_csv("./Challenge/AtividadesDia7/Dados/csv.csv")
print(baseDeDados.loc[74,["Year"]])