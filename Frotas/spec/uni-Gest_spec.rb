
describe 'Cadastro de Unidade Gestora', :cadges do

    it 'Cadastro Unidade Gestora com Sucesso' do        

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
        menuUse = find('li[name="Unidade Gestora"]')
        menuUse.find('.fa-plus').click
        # Acessando o atalho para cadastro de um novo usuário direto

        find('input[name="Nome"]').set 'Unidade Gestora Automação'
        find('input[name="RazaoSocial"]').set 'Automação Optimus Prime LTDA'
        find('input[name="Cnpj"]').set '41972372000167'
        find('input[name="Codigo"]').set 'LARS985'

        dropSit = find('select[name="Situacao"]')
        dropSit.find('option', text: 'Ativo').select_option

        click_button 'Confirmar'
        expect(page).to have_content 'Registro incluído com sucesso.'

        sleep 2
    end
end