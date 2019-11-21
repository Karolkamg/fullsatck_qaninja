Dado("que acesso o google") do
    visit 'https://www.google.com/'
end
  
Quando("faço pesquisa") do
  find('input[name=q]').set 'bolos'
  find('.gNO89b').click
  sleep 5
end
  
Então("tenho resultado") do
first('.hfac6d').to have_contant 'Bolo Simples para Café'
end