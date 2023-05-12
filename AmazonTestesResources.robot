*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${URLHOME}                         https://www.amazon.com.br/
${IconeAmazonHome}                 nav-logo-sprites  
${ElementoOfertasDoDia}            //a[contains(.,'Ofertas do Dia')]
${TextoOfertaEPromocoes}           //img[@src='https://m.media-amazon.com/images/G/32/br-events/2022/0056_Faceout_Bubble_ofertas_150x150.jpg']
${BotaoTextodePesquisa}            //input[contains(@type,'text')]
${BotaoSubmeterPesquisar}          //input[contains(@type,'submit')]
${GuitarraIbanez}                  //img[contains(@alt,'Ibanez GRG guitarra elétrica de corpo sólido de 6 cordas, direita, preta plana, completa (GRGRGR131EXBKF)')]
${BotaoTodos}                      //i[contains(@class,'hm-icon nav-sprite')]
${BotaoSuaConta}                   //a[@href='/gp/css/homepage.html?ref_=nav_em_ya_0_1_1_42'][contains(.,'Sua conta')]
${BotaoAdicionarAoCarrinho}        //input[contains(@name,'submit.add-to-cart')]
${BotaoCarrinho}                   //span[contains(@class,'nav-cart-icon nav-sprite')]
${BotaoExcluirProdutoDoCarrinho}   //input[contains(@name,'submit.delete.C53757635-0761-43f9-82f9-2ef94a0ecffb')]
*** Keywords ***
Abrir o navegador
    Open Browser  browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    ${URLHOME}   
    Wait Until Element Is Visible    locator=${IconeAmazonHome} 

Entrar no Menu Ofertas do Dia 
    Click Element    ${ElementoOfertasDoDia}
    Wait Until Element Is Visible    ${TextoOfertaEPromocoes}

Verificar se o título da página é "Ofertas e Promoções"
    Element Text Should Be    //h1[@class='a-size-extra-large a-spacing-micro'][contains(.,'Ofertas e Promoções')]    Ofertas e Promoções

Digitar o nome de produto "${Produto}" no campo de pesquisa
    Input Text        ${BotaoTextodePesquisa}    ${Produto}    

Clicar no botão de pesquisa
    Click Element     ${BotaoSubmeterPesquisar}   
    
Verificar o resultado de pesquisa "Guitarra Ibanez"
    Element Should Be Visible    ${GuitarraIbanez}

Clicar no botão "Todos"   
    Click Element    ${BotaoTodos}

Verificar o resultado da pesquisa se está listando o produto "${ResultadoPesquisa}"
    Title Should Be    ${ResultadoPesquisa}

Adicionar o produto "${ComprandoProduto}" no carrinho
    Scroll Element Into View         (//div[contains(@class,'s-product-image-container aok-relative s-text-center s-image-overlay-grey s-padding-left-small s-padding-right-small puis-spacing-small s-height-equalized')])[5] 
    Click Element                    //img[contains(@alt,'Smart TV LED 65" 4K UHD Samsung UN65BU8000 - Wifi, HDMI, USB')]   
    Click Element                    ${BotaoAdicionarAoCarrinho}
    Wait Until Element Is Visible    //input[contains(@aria-labelledby,'attachSiNoCoverage-announce')]
    Click Element                    //input[contains(@aria-labelledby,'attachSiNoCoverage-announce')]

Fazer o Scroll até a opção desejada
    Wait Until Element Is Visible    //div[@class='hmenu-item hmenu-title '][contains(.,'destaques')]
    Scroll Element Into View    (//a[@class='hmenu-item hmenu-compressed-btn'][contains(.,'ver tudo')])[2]

Clicar no botão "Sua Conta"
    Click Element               //a[@href='/gp/css/homepage.html?ref_=nav_em_ya_0_1_1_42'][contains(.,'Sua conta')]

Validar se ícones aparecem
    Wait Until Element Is Visible    //h1[contains(.,'Sua conta')]
    Element Should Be Visible        //span[@class='a-color-secondary'][contains(.,'Gerenciar ou adicionar formas de pagamento e ver suas transações')]    
    Element Should Be Visible        //h2[@class='a-spacing-none ya-card__heading--rich a-text-normal'][contains(.,'Seus pedidos')]

Verificar se o produto "TV 70 polegadas" foi adicionado com sucesso
    Click Element                    //span[contains(@class,'nav-cart-icon nav-sprite')]
    Wait Until Element Is Visible    proceedToRetailCheckout
    Element Should Be Visible        proceedToRetailCheckout
Adicionar manga One Piece no carrinho
    Wait Until Element Is Visible    //img[@alt='One Piece Vol. 1']
    Click Element                    //img[@alt='One Piece Vol. 1']
    Wait Until Element Is Visible    ${BotaoAdicionarAoCarrinho}
    Click Element                    ${BotaoAdicionarAoCarrinho}
Navegar entre menu principal e menu do carrinho
    Click Element                        ${IconeAmazonHome}
    Wait Until Element Is Visible        ${BotaoCarrinho}  
    Click Element                        //a[contains(@aria-label,'1 item no carrinho')]
Remover manga do carrinho
    Wait Until Element Is Visible           //h1[contains(.,'Carrinho de compras')]
    Click Element                           //span[@class='a-button-text a-declarative'][contains(.,'Qtd:1')]
    Click Element                           //a[@tabindex='-1'][contains(@id,'0')][contains(.,'0 (Excluir)')]
    
Entrar na Tela de Login
    Click Element                    //span[@class='nav-line-1 nav-progressive-content'][contains(.,'Olá, faça seu login')]
    
Digitar email    
    Wait Until Element Is Visible    ap_email    digiteemailvalido
    Click Element                    //input[contains(@tabindex,'5')]
Digitar senha
    Wait Until Element Is Visible    //input[@type='password'][contains(@id,'password')]
    Input Password                   //input[@type='password'][contains(@id,'password')]    digitesenhavalida
    Click Element                    //input[contains(@tabindex,'3')]

Conferir se logou pela tela principal
    Wait Until Element Is Visible    //span[@class='nav-line-1 nav-progressive-content'][contains(.,'Enviar para Matheus')]
    
Scrollar até a opção sair ficar visível
    Wait Until Element Is Visible    //div[@class='hmenu-item hmenu-title '][contains(.,'destaques')]
    Scroll Element Into View         //a[@class='hmenu-item'][contains(.,'Sair')]
    # //ul[contains(@class,'hmenu hmenu-visible')]
    
Clicar no Botão sair   
    Click Element                    //a[@class='hmenu-item'][contains(.,'Sair')]

Voltar para Home a partir da opção de deslogar
    Wait Until Element Is Visible    //i[contains(@class,'a-icon a-icon-logo')]
    Click Element                    //i[contains(@class,'a-icon a-icon-logo')]

Verificar se conta foi deslogada
    Wait Until Element Is Visible    //span[@class='nav-line-2 nav-progressive-content'][contains(.,'Selecione o endereço')]
    







    
