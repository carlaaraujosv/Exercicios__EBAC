
      #language: pt

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