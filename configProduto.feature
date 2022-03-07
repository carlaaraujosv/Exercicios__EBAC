
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





