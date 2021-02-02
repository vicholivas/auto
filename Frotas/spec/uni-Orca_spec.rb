
describe 'Cadastro de Unidade Orçamentária', :cadorca do

    it 'Cadastro Unidade Orçamentária com Sucesso' do        

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
        menuUse = find('li[name="Unidade Orçamentária"]')
        menuUse.find('.fa-plus').click
        # Acessando o atalho para cadastro de um novo usuário direto

        find('input[name="Descricao"]').set 'Unidade Orçamentária Automação'
        find('input[name="Sigla"]').set 'UOA'
        find('input[name="Conta"]').set '654875-5'
        find('input[name="UnidadeGestoraSuggestion"]').set 'Auto'
        find('.k-item', text: "LARS985 - Unidade Gestora Automação").click

        find('input[name="Endereco.Cep"]').set("18602240").send_keys(:tab)
        find('input[name="Endereco.Numero"]').set "68"

        dropTel = find('select[name="Tipo"]')
        dropTel.first(:option, "Celular").select_option
        #Referente ao tipo de telefone para selecionar
        find('input[name="Telefone"]').set("16453846666").send_keys(:tab)
        #Referente ao número do telefone pra informar
        find('.checkbox-inline').set(true)
        #Referente ao checkbox se é contato de whatsapp
        find(:xpath, '//*[@id="app"]/div/section/section/section/main/div/div/div/div/div/form/div[1]/div[5]/div[1]/fieldset/div/div[2]/div[1]/div/div/div/form/div/div/div[4]/button/i').click
        sleep 2
        #Referente ao botão adicionar telefone

        find('input[name="Email"]').set("teste@teste.com.br").send_keys(:tab)
        #Referente ao campo para informar e-mail
        find(:xpath, '//*[@id="app"]/div/section/section/section/main/div/div/div/div/div/form/div[1]/div[5]/div[2]/fieldset/div/div[2]/div[1]/div/div/div/form/div/div/div[2]/button/i').click
        #Referente ao botão adicionar e-mail

        click_button 'Confirmar'
        expect(page).to have_content 'Registro incluído com sucesso.'

        sleep 3
    end
end