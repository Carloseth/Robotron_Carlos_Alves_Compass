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
#Q4()

def Q5(x):
    contarPares = 0
    somaPar = 0
    media = 0
    for c in x :
        if c % 2 == 0: 
            somaPar += c
            contarPares += 1
    media = somaPar / contarPares
    print(media)
#Q5([1,3,4,5,6,7,8,10]) 

def Q6():
    x = int(input('digite numero inteiro: '))
    for i in range(0, x):
        if i % 2 != 0:
            print(f'o número: {i} é ímpar')
#Q6()

def Q7(x,y: int):
    media = x + y / 2
    print(media)
Q7(2,2)