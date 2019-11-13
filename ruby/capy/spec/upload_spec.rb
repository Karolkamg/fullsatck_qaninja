describe 'Upload', :upload do
  before(:each) do
    visit '/upload'
    @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
    @imagem = Dir.pwd + '/spec/fixtures/imagem_upload.png'
  end

  it 'Upload com arquivo texto' do
    attach_file('file-upload', @arquivo)
    click_button 'Upload'

    div_arquivo = find('#uploaded-file')
    expect(div_arquivo.text).to eql 'arquivo.txt'
  end

  it 'Upload de imagem', :upload_imagem do
    attach_file('file-upload', @imagem)
    click_button 'Upload'

    img = find('#new-image')
    expect(img[:src]).to include '/uploads/imagem_upload.png'
  end

  after(:each) do
    sleep 3
  end
end
