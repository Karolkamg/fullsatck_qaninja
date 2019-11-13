describe 'Alerta de JS', :alerts do

    before(:each) do
        visit '/javascript_alerts'
    end

    it 'Alerta' do
        click_button 'Alerta'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
    end

    it 'Sim confirma' do
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
    end

    it 'Sim confirma' do
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
    end

    it 'Prompt', :accept_prompt do
        accept_prompt(with: 'Karoline') do
            click_button 'Prompt'
        end
        expect(page).to have_content 'Olá, Karoline'
    end
    
    it 'Prompt', :dismiss_prompt do
        accept_prompt(with: 'Karoline') do
            click_button 'Prompt'
        end
        expect(page).to have_content 'Olá, Karoline'
    end
end