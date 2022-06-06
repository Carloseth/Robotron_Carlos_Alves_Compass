#aqui temos uma string normal
texto = "Fazendo uma manipulação"
#a string tem 23 caracteres

#Para percorrer a string e separar 'Fazendo' e 'Manipulação'
#A palavra Fazendo tem 7 caracteres, então está na posição 0 e 7
print(texto[0:7])

#Para printar Manipulação não é necessario estipular um numero final
print(texto[12:])
#Para encontrar caracter
print(texto.find('o'))
#Para cortar caracter, usar split():
#o metodo retorna uma lista com as palavras no texto
print(texto.split(" "))

