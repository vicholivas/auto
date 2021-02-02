
describe 'Cadastro de Usuário', :caduse do

    it 'Cadastro Usuário com Sucesso' do        

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
        menuUse = find('li[name="Usuário"]')
        menuUse.find('.fa-plus').click
        # Acessando o atalho para cadastro de um novo usuário direto

        sleep 2
        find('input[name="SuggestionUsuarioAuth"]').set 'vitor'
        find('.k-item', text: "442.628.568-28 - Vitor").click

        find('input[name="Matricula"]').set 'L3K2U7Q'
    
        find('input[name="UnidadeGestora"]').set "a"
        find('.k-item', text: "abc12345 - Smarapds").click
        #Referente ao suggestion Unidade Gestora
        find('input[name="OrgaoLotacaoSuggestion"]').set "a"
        find('.k-item', text: "1 - Secretaria do Governo").click

        find('.btn-primary').double_click
        expect(page).to have_content 'Registro incluído com sucesso.'
        sleep 7
    end
end