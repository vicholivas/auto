
describe 'Cadastro de Fornecedor', :cadfor do

    it 'Cadastro Fornecedor com Sucesso' do

        visit '/'
        #Aqui utilizo o visit desta forma, porque a rota já consta configurada no spec_helper e como não tem alteração daquela rota, posso manter assim.
        fill_in 'userId', with: 'brotas'
        fill_in 'password', with: 'victorhugo123'
        #Dados de acesso para logar no sistena.
        click_button 'Entrar'
        #A partir daqui, estou logado no sistema e apto para navegar nas funcionalidades.

        sleep 2
        find('.MuiSvgIcon-root').click
        # Acessar o sidebar
        sleep 3
        find(:xpath, '/html/body/div[2]/div/div[2]/div/div/div[2]/ul/li[1]/div/span/span').click
        # Acessar o menu cadastro capirotal
        menuCol = find('li[name="Fornecedor"]')
        menuCol.find('.fa-plus').click
        # Acessando o atalho para cadastro de um novo usuário direto

        find('input[name="PessoaSuggestion"]').send_keys [:tab], :enter

        find('input[name="Nome"]').set 'Pessoa Automatizada Fornecedor 5'
        find('input[name="CpfCnpj"]').set '46221774047'
        find('input[name="Endereco.Cep"]').set('18605377').send_keys(:tab)
        sleep 2
        find('input[name="Endereco.Numero"]').set('58').send_keys [:tab, :tab, :tab], :enter
        sleep 2
        click_button 'OK'
        sleep 2

        find('input[name="InscricaoMunicipal"]').set '387529756'
        find('input[name="InscricaoEstadual"]').set '5649752333'
        find('input[name="NomeFantasia"]').set 'Automato Fantasy'

        dropTel = find('select[name="Tipo"]')
        dropTel.first(:option, "Celular").select_option
        #Referente ao tipo de telefone para selecionar
        find('input[name="Telefone"]').set("16453846666").send_keys(:tab)
        #Referente ao número do telefone pra informar
        find('.checkbox-inline').set(true).send_keys [:tab], :enter
        #Referente ao checkbox se é contato de whatsapp
        sleep 2

        find('input[name="Email"]').set("teste@teste.com.br")
        sleep 2
        find('input[name="Email"]').send_keys [:tab, :enter]
        #Referente ao campo para informar e-mail
        click_button 'Confirmar'

        sleep 3
    end
end