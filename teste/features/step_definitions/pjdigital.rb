Dado("que acesso o sistema PJ Digital") do
    visit 'http://pjdigital.lab.sistemas.sofisa.local/'
  end
  
  Quando("informo o usuário {string} e senha {string}") do |usuário, senha|
    find('#username').set usuário 
    find('#password').set senha
    find('#kc-login').click
    sleep 3
  end
  
  Então("login realizado com sucesso") do
    name = find('span[class="so-header--user--info--name"]')
    expect(name).to have_content 'Juliane Tabor Ignacio'
end