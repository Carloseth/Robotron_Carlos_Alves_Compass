def funcaoSomar(p1,p2):
    soma = p1 + p2
    return soma

def texto(txt):
    print(f"o texto é: {txt} ")
#texto("carlos gabriel")

lista = ["Quero", "Tomar", "Café"]

#A função abaixo percorre a lista e procura a palavra café
def buscarCafe():
    if "Café" in lista:
        print("Achei um café na lista")
    else:
        assert False, "Não encontrei um café na lista"
buscarCafe()


def percorrer_lista():
    for x in range(0, len(lista)):
        print(lista[x])
percorrer_lista()

def func(lista):
    soma = 0
    for x in range(1,len(lista)):
        if lista[x] > lista[x-1]:
            soma += lista[x]
    #print(soma)
func([1,4,3,2,6,7,5,4,8,9,5,3])


def somaNumeros(l,v):
  soma= 0
  contador = 0
  for c in range(1,len(l)):
    soma = soma + c
    if soma <= v:
      contador = contador + 1
  #print(contador)
somaNumeros([5, 3, 4, 7, 10, 2, 3, 13, 25, 1, 1, 8], 15)
