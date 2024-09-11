Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

Contexto: que estou na página de login
  
  Esquema de Cenário: Login com dados válidos
    Quando eu insiro o usuário "<Usuário>" e a senha "<Senha>"
    Então eu devo ser direcionado para a tela de checkout

    Exemplos:
      | Usuário          | Senha        |
      | usuario_valido   | senha_valida |

  Esquema de Cenário: Login com dados inválidos
    
    Quando eu insiro o usuário "<Usuário>" ou a senha "<Senha>"
    Então eu devo ver a mensagem de alerta "Usuário ou senha inválidos"
    
    Exemplos:
      | Usuário          | Senha         |mensagem                    |
      | usuario_invalido | senha_valida  |Usuário ou senha inválidos  |
      | usuario_valido   | senha_invalida|Usuário ou senha inválidos  |
      |                  | senha_valida  | # Usuário vazio            |
      | usuario_valido   |               | # Senha vazia              |