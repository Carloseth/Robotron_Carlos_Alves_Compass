def lista(binario):
    soma= 0
    c = 0
    for i in binario:
        c += 1
        if i == 1:
            soma = soma + c
    #print(soma)
lista([0,0,0,1,1,1,1,0])

#PERCORRENDO PELO ÍNDICE, A CADA ÍNDICE IMPAR, SOMAR ELEMENTO
soma = 0
lst = [1, 2, 0, 2, 0, 2, 2,3,3,0]
for x in range(len(lst)):
    print(x)
    if x % 2 == 1 :
        soma = soma + lst[x]
#print(soma)
