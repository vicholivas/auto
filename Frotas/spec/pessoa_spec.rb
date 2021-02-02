
describe 'Cadastro de Pessoa', :cadpes do

    it 'Cadastro Pessoa com Sucesso' do        

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
        sleep 2
        find(:xpath, '/html/body/div[2]/div/div[2]/div/div/div[2]/ul/li[1]/div/span/span').click
        # Acessar o menu cadastro capirotal
        menuUse = find('li[name="Pessoa"]')
        menuUse.find('.fa-plus').click
        # Acessando o atalho para cadastro de um novo usuário direto

        find('input[name="Nome"]').set 'Pessoa Automatizada'
        selTipPes = find('select[name="TipoPessoa"]')
        selTipPes.find('option', text: 'Física').select_option
        sleep 2
        find('input[name="CpfCnpj"]').set '91905932006'

        find('input[name="Endereco.Cep"]').set("18610036").send_keys(:tab)
        find('input[name="Endereco.Numero"]').set "24"        

        click_button 'Confirmar'
        expect(page).to have_content 'Registro incluído com sucesso.'

        sleep 3
    end
end