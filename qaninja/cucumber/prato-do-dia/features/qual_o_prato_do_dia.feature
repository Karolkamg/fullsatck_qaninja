#language:pt

Funcionalidade: Qual é o prato do dia
    Queremos saber qual é o prato do dia na capital paulista

    Esquema do Cenário: Prato do dia

        Dado que hoje é <dia>
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser <resposta>

        Exemplos:
        |  dia               | resposta                |
        | "Segunda-feira"    | "Virado a Paulista"     |
        | "Terça-feira"      | "Dobradinha"            |
        | "Quarta-feira"     | "Feijoada"              |
        | "Quinta-feira"     | "Macarronada"           |
        | "Sexta-feira"      | "Filé de Merluza"       |