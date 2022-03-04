
      #language: pt

      Funcionalidade: Configurar produto
      Como cliente da EBAC-SHOP
      Quero configurar meu produto de acordo com meu tamanho e gosto
      Para depois inserir no carrinho

      Contexto:
      Dado que eu me logue na plataforma da EBAC-SHOP

      Cenário: Seleção das características do produto
      Quando eu vizualizar o produto que eu quero comprar
      E escolher o <tamanho>
      E escolher a <cor>
      E escolher a <quantidade>
      Então deverá aparecer o botão de incluir o produto no carrinho de compras, permitindo a conclusão do pedido

      Cenário: Limite de produtos inválidos
      Quando eu estiver no carrinho de compras e clicar para concluir a compra
      E a quantidade produtos exceder 10 itens
      Então deverá exibir a mensagem de alerta "Limite de produtos excedido, o máximo é de 10 itens!Reduza a quantidade e conclua seu pedido!"

      Cenário: Limpar carrinho de compras
      Quando eu tiver escolhido um produto e desejar limpar o carrinho
      E clicar no botão "limpar"
      Então deverá voltar a tela de escolha de produtos com carrinho vazio


      Funcionalidade: Login na plataforma
      Como cliente da EBAC-SHOP
      Quero fazer o login (autenticação) na plataforma
      Para visualizar meus pedidos

      Esquema do Cenário: Autenticação de usuário válida
      Quando eu digitar o <usuario>
      E a <senha>
      Então deve exibir a tela de checkout

      Exemplos:
      | usuario            | senha  |
      | ana@ebac.com.br    | 123456 |
      | bianca@ebac.com.br | 102030 |
      | camila@ebac.com.br | 765432 |
      | davi@ebac.com.br   | 405060 |

      Cenario: Autenticação de usuário inválida
      Dado que eu acesse a plataforma da EBAC-SHOP
      Quando eu digitar o usuário "ana@ebac.com.br"
      E digitar a senha "012345"
      Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos!"


      Funcionalidade: Tela de Cadastro - Checkout
      Como cliente da EBAC-SHOP
      Quero fazer meu cadastro
      Para poder finalizar meu pedido

      Esquema do Cenario: Preencher dados obrigatórios de cadastro
      Dado que eu acesse a plataforma da EBAC-SHOP
      Quando que eu preencher todos <Dados obrigatorios>
      Então deve exibir a mensagem de sucesso "Cadastro Preenchido Com Sucesso!"

      Exemplos:
      | Dados obrigatorios |
      | Nome completo      |
      | CPF                |
      | Data de nascimento |
      | Endereco           |
      | Celular            |  
      | E-mail             |

      Cenário: Campo de e-mail com formato inválido
      Dado que eu acesse a plataforma da EBAC-SHOP
      Quando que eu preencher o campo do e-mail "ana@@ebac.com.br"
      Então deve exibir a mensagem de erro "Formato de e-mail inválido!"

      Cenário: Erro ao finalizar cadastro com campos vazios
      Dado que eu acesse a plataforma da EBAC-SHOP
      Quando acessar a tela de cadastro 
      E clicar no botão de CONCLUIR CADASTRO
      Mas sem preencher nenhum campo
      Então deve exibir a mensagem de erro "Para concluir seu cadastro, preencha todos campos obrigatórios que estão vazios!"









