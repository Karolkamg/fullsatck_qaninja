module Enjoeat
    def prato_do_dia(dia)
        if dia == 'Segunda-feira'
            'Virado a Paulista'
        end
    end
end
World Enjoeat


Dado("que hoje é segunda-feira") do
    @hoje = 'Segunda-feira'
end
  
Quando("eu pergunto qual é o prato do dia") do
    @resposta_obtida = prato_do_dia(@hoje)
end
  
Então("a resposta deve ser {string}") do |resposta_esperada|
    expect(@resposta_obtida).to eql resposta_esperada
end