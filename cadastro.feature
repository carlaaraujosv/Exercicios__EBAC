
      #language: pt

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









