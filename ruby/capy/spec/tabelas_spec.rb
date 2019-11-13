describe 'Tabelas', :tabs do

    before(:each) do
        visit '/tables'
    end

    it 'Deve exibir o salario do Stark' do
        atores = all('table tbody tr')

        stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr') }

        expect(stark.text).to include '10.000.000'
    end

    it 'Deve exibir o salário do Vin Diesel' do
        diesel = find('table tbody', text: '@vindiesel')
        expect(diesel).to have_content '10.000.000'
    end

    it 'Deve exibir o filme Velozes' do
        diesel = find('table tbody', text: '@vindiesel')
        movie = diesel.all('td')[2].text
        expect(diesel).to eql 'Fast & Furious'
    end

    it 'Deve exibir o insta do Chris Evans' do
        evans = find('table tbody tr', text: 'Chris Evans')
        insta = evans.all('td')[4].text

        expect(insta).to eql '@teamcevans'
    end

    it 'Deve selecionar Crihs Prat para remoção' do
        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'delete').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
    end

    it 'Deve selecionar Crihs Prat para edição' do
        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'edit').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
    end


end