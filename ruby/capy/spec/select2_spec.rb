describe 'Select2', :select2 do

  describe 'Single', :single do

    before(:each) do
      visit '/apps/select2/single.html'
    end

    it 'seleciona ator por nome' do
      find('.select2-selection--single').click
      find('.select2-results__option', text: 'Adam Sandler').click
    end

    it 'Busca e clica no ator' do
        find('.select2-selection--single').click
        find('.select2-search__field').set 'Chirs Rock'
        find('.select2-results__option').click
    end

  end

  describe 'multiple', :mult do

    before(:each) do
      visit '/apps/select2/multi.html'
    end

    def selecione(ator)
        find('.select2-selection--multiple').click
        find('.select2-search__field').set ator
        find('.select2-results__option').click
    end

    it 'Seleciona atores' do

        atores = ['Jim Carrey', 'Owen Wilson', 'Kevin James']
        atores.each do |a|
            selecione(a)
        end
    end

  end

end