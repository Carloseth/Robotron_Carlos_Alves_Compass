#Exemplo de loop com funcao.
def soma(a,b):
    return a + b
def menu():
    return input("Deseja continuar, sim ou não?\n")
def programa():
    controle = "sim"
    while controle == "sim":
        a = int(input("Digite o primeiro valor"))
        b = int(input("Digite o segundo valor"))
        resultado = soma(a,b)
        print(f'a soma de {a} + {b} é: {resultado} ')
        controle = menu()
programa()