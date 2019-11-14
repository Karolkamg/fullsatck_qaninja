#language:pt

Funcionalidade: Qual é o prato do dia
    Queremos saber qual é o prato do dia na capital paulista

    Cenário: Hoje é dia de Virado a Paulista
        
        Dado que hoje é segunda-feira
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser "Virado a Paulista"