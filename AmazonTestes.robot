*** Settings ***
Resource          AmazonTestesResources.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***

Caso de Teste 01-Acesso ao menu "Oferta e Promoções"
     [Documentation]    Esse teste verifica o funcionamento do menu eletronicos da Amazon
     ...                E verifica a categoria computadores e Informática.
     [Tags]             Menus    Categorias

     Acessar a home page do site Amazon.com.br
     Entrar no Menu Ofertas do Dia
     Verificar se o título da página é "Ofertas e Promoções"
     

Caso de Teste 02- Pesquisa de um produto
     [Tags]              Pesquisa_Produtos

     Acessar a home page do site Amazon.com.br
     Digitar o nome de produto "Guitarra Ibanez" no campo de pesquisa
     Clicar no botão de pesquisa
     Verificar o resultado de pesquisa "Guitarra Ibanez"

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho

    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "One Piece" no campo de pesquisa
    Clicar no botão de pesquisa
    Adicionar manga One Piece no carrinho


Caso de Teste 04 - Validando opção "Sua Conta"
    [Tags]        OpcoesMenuTodos

    Acessar a home page do site Amazon.com.br
    Clicar no botão "Todos"
    Fazer o Scroll até a opção desejada
    Clicar no botão "Sua Conta"
    Validar se ícones aparecem

Caso de Teste 05 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "One Piece" no campo de pesquisa
    Clicar no botão de pesquisa
    Adicionar manga One Piece no carrinho
    Navegar entre menu principal e menu do carrinho
    Remover manga do carrinho

Caso de Teste 06 - Realizar Login com Dados Válidos
    [Documentation]    Esse teste realiza um login no site Amazon com sucesso
    [Tags]             login
    Acessar a home page do site Amazon.com.br
    Entrar na Tela de Login
    Digitar email
    Digitar senha
    Conferir se logou pela tela principal

Caso de Teste 07 - Realizar Logoff
    [Documentation]    Esse teste realiza a saída da conta que está logada
    [Tags]             Logoff
    Acessar a home page do site Amazon.com.br
    Entrar na Tela de Login
    Digitar email
    Digitar senha
    Conferir se logou pela tela principal
    Clicar no botão "Todos"
    Scrollar até a opção sair ficar visível
    Clicar no Botão sair
    Voltar para Home a partir da opção de deslogar
    Verificar se conta foi deslogada


    