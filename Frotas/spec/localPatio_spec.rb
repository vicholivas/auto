
describe 'Local e Pátio', :lotio do

    it 'Cadastro Local e Patio com Sucesso' do

        visit '/'
        #Aqui utilizo o visit desta forma, porque a rota já consta configurada no spec_helper e como não tem alteração daquela rota, posso manter assim.
        fill_in 'userId', with: 'brotas'
        fill_in 'password', with: 'victorhugo123'
        #Dados de acesso para logar no sistena.
        click_button 'Entrar'
        #A partir daqui, estou logado no sistema e apto para navegar nas funcionalidades.

        find('.MuiSvgIcon-root').click
        sleep 2
        find(:xpath, '/html/body/div[2]/div/div[2]/div/div/div[2]/ul/li[1]/div/span/span').click
        sleep 2
        menu = find('li[name="Local e Pátio"]')
        menu.find('.fa-plus').click
        #Todo esse trecho é para conseguir acessar o menu lateral, acessar a opção de cadastros e por fim, conseguir acessar o link que direciona para a tela de cadastro direto.

        find('input[name="Nome"]').set 'Posto Automação 7'
        #Referente ao campo Nome
        find('input[name="UnidadeGestoraSuggestion"]').set "a"
        sleep 2
        find('.k-item', text: "abc12345 - Smarapds").click
        #Referente ao suggestion Unidade Gestora
        find('input[name="UnidadeOrcamentariaSuggestion"]').set "a"
        sleep 2
        find('.k-item', text: "1 - Secretaria do Governo").click
        #Referente ao suggestion Unidade Orçamentaria

        dropLim = find('select[name="TemLimite"]')
        dropLim.find('option', text: 'Sim').select_option
        #Referente ao dropdown Tem Limite
        find('input[name="Capacidade"]').set "10"
        #Referente ao campo de capacidade

        find('input[name="Endereco.Cep"]').set("18602240").send_keys(:tab)
        sleep 2
        #Referente ao campo CEP

        dropTel = find('select[name="Tipo"]')
        dropTel.first(:option, "Celular").select_option
        #Referente ao tipo de telefone para selecionar
        find('input[name="Telefone"]').set("16453846666").send_keys(:tab)
        #Referente ao número do telefone pra informar
        find('.checkbox-inline').set(true)
        #Referente ao checkbox se é contato de whatsapp
        find(:xpath, '//*[@id="app"]/div/section/section/section/main/div/div/div/div/div/form/div[1]/div[5]/div[1]/fieldset/div/div[2]/div[1]/div/div/div/form/div/div/div[4]/button').click
        sleep 2
        #Referente ao botão adicionar telefone

        find('input[name="Email"]').set("teste@teste.com.br").send_keys(:tab)
        #Referente ao campo para informar e-mail
        find(:xpath, '//*[@id="app"]/div/section/section/section/main/div/div/div/div/div/form/div[1]/div[5]/div[2]/fieldset/div/div[2]/div[1]/div/div/div/form/div/div/div[2]/button/i').click
        #Referente ao botão adicionar e-mail

        find('button[type="submit"]').click
        sleep 5
        #Referente ao botão confirmar, para finalizar o cadastrado

        expect(find('div[id="swal2-content"]')).to have_content 'Registro incluído com sucesso.'
        sleep 5
        #Referente a validação da mensagem exibida em tela, após confirmar o cadastro.
    end
end