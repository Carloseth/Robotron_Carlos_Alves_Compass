#para abrir e ler um arquivo, usar a função open
#modo leitura "r"
#definir o nome usando "as"
#E dentro do escopo do with, printar o read()

with open("testeLeitura.txt", "r", encoding= "utf-8") as arquivo:
    conteudo = arquivo.read()
    print(conteudo)
    
#Para ler apenas por linhas:
with open("testeLeitura.txt", "r", encoding= "utf-8") as arquivo:
    for linha in arquivo.readlines(): #Caso necessite de uma linha por vez, usar o readline() no singular
        print(linha)
        