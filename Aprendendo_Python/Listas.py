lista_compras = ['banana', 'uva', 'laranja']

lista_compras.append('beterraba') #adiciona elemento ao final da lista
lista_compras.insert(1,'chocolate') #insere o elemento na posição escolhida, e não sobrepõe o valor existente
del lista_compras[4] #remove pela posição
lista_compras.remove('chocolate') #remove pelo nome
print(lista_compras)


tarefas = []
tarefa = 0
while tarefa !='': 
    tarefa = input('insira uma tarefa: ')   
    tarefas.append(tarefa)
print(tarefas[0:-1])


    
    

