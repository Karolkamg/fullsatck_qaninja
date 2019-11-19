module Enjoeat
    def prato_do_dia(dia)
        if dia == 'Segunda-feira'
            'Virado a Paulista'
        elsif
            dia == 'Terça-feira'
            'Dobradinha'
        elsif
            dia == 'Quarta-feira'
            'Feijoada'
        elsif
            dia == 'Quinta-feira'
            'Macarronada'
        elsif
            dia == 'Sexta-feira'
            'Filé de Merluza'
        elsif
            dia == 'Sábado'
            'Vejo o cardápio'
        elsif
            dia == 'Domingo'
            'Fechado'
        else
            'Dia inválido'
        end
    end
end
World Enjoeat


Dado("que hoje é {string}") do |dia|
    @hoje = dia
end
  
Quando("eu pergunto qual é o prato do dia") do
    @resposta_obtida = prato_do_dia(@hoje)
end
  
Então("a resposta deve ser {string}") do |resposta_esperada|
    expect(@resposta_obtida).to eql resposta_esperada
end