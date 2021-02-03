<h1 align="center">Testes de Aceitação Automatizados</h1>

<p align="center">A ideia do projeto é permitir a validação na camada web de algumas funcionalidades escolhidas junto ao PO. O projeto está em fase inicial, então ainda há necessidade de algumas refatorações e melhorias</p>


<h4 align="center"> 
	🚧  Ruby + Rspec + Capybara 🚀 Em construção... 🚧
</h4>

### :sunglasses: Pré-requisitos

Para desfrutar(ou chorar vendo) este projeto, há necessidade de algumas instalações serem efetuadas previamente.
* Ruby -> 2.7.2-1
* Capybara -> 3.33.0
* Rspec -> 3.9.0
* Selenium-WebDriver -> 3.142.7
* FFI -> 1.13.1

### :slot_machine: Instalando Ruby Windows

```bash
# Download Windows
$ Acessar: <https://rubyinstaller.org/downloads/>
$ Efetuar download da versão 2.7.2-1, focado para arquitetura do seu sistema

# Instalação Ruby
$ Duplo clique no arquivo de instalação > Clicar em Next até a finalização
```

### :trollface: Caso já queira rodar o projeto, siga aqui:

```bash
$ Após download, acesse a pasta do projeto utilizando seu prompt de comando favorito
$ Execute o comando bundle install -> Senta a mão no enter
$ Após instalação das gems, basta escolher qual cenário deseja executar e dar o comando bom base na tag de cada cenário.
$ Os arquivos na pasta "spec", ao visualiza-los basta identificar a tag que consta documentada em cada arquivo.
$ Exemplo do comando rspec --tag @lotio (Irá executar apenas o cenário de teste do Local Abastecimento)
$ Caso prefira efetuar toda instalaçâo do começo apenas siga o passo a passo abaixo.
```

### Caso prefira efetuar toda instalaçâo do começo, inicie aqui | :gem: Iniciando Ruby/Instalando as GEMS

```bash
# Pasta do Projeto
$ Crie uma pasta de preferência na raiz C:, onde ficará o projeto
$ Acesse a pasta por qualquer prompt de comando da sua preferência
$ Digite bundle init -> Senta o dedo no Enter

# Informando as GEMS
$ Na pasta do projeto, acesse o arquivo Gemfile com o seu editor predileto
$ Informe os seguintes dados:
    source "https://rubygems.org"

    gem "capybara", "3.33.0"
    gem "rspec", "3.9.0"
    gem "selenium-webdriver", "3.142.7"
    gem "ffi", "1.13.1"
$ Acesse a pasta do projeto novamente, utilizando o prompt de comando da sua preferência e digita bundle install
$ Aguarde a finalização da instalação

# Informando as bibliotecas para o Rspec
$ Com o prompt de comando de sua preferência, acesse a pasta do projeto novamente e digite rspec --init
$ Na pasta do projeto, acesse o arquivo spec_helper.rb com o editor de sua preferência
$ Informe os seguintes dados:
    require "capybara"
    require "capybara/rspec"
    require "selenium-webdriver"
    
$ Be Happy ;)
```
