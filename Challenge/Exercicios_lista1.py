#1 Retornar hello world
def Q1():
    print('hello world')
#Q1()

#2 Armazenar duas variaveis
def Q2():
    nota1 = int(input('Digite a nota 1: '))
    nota2 = int(input('Digite a nota 2: '))
    media = (nota1 + nota2) / 2
    print(media)
#Q2()

def Q3(valor1,valor2):
    somaValores = valor1 + valor2
    print(f'O resultado da soma é: {somaValores}')
    if somaValores % 2 == 1:
        print(f'{somaValores} é um número ímpar')
    else:
        print(f'{somaValores} é um número par')
#Q3(1,2)

def Q4():
    idade = (int(input('Digite sua idade: ')))
    if idade >= 18:
        print('Você é maior de idade')
    elif idade <=12:
        print('Você é uma criança')
    else: 
        print('Você é um adolescente')
Q4()