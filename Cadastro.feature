Funcionalidade: Concluir cadastro
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto: que estou na página de cadastro

  Esquema de Cenário: Cadastro com todos os dados obrigatórios
    Quando eu preencho todos os campos obrigatórios <Nome>, <Sobrenome>, <Email>, <Senha>, <Endereço>
    Então eu clico no botão "Concluir cadastro" e meu cadastro deve ser concluído com sucesso
    
    Exemplos:
      | Nome       | Sobrenome | Email                   | Senha       | Endereço           |
      | João       | Silva     | joao.silva@exemplo.com  | senha123    | Rua Exemplo, 123   |
      | Maria      | Souza     | maria.souza@exemplo.com | senha456    | Avenida Teste, 456 |

  Esquema de Cenário: Cadastro com e-mail inválido
    Quando eu preencho o campo e-mail com "<Email>" e preencho os outros campos obrigatórios
    Então eu clico no botão "Concluir cadastro" eu devo ver uma mensagem de erro "Formato de e-mail inválido"
    
    Exemplos:
      | Email                |                            |
      | joao.silva@exemplo   | Formato de e-mail inválido |
      | maria.souza@.com     | Formato de e-mail inválido |
      | @exemplo.com         | Formato de e-mail inválido |

  Esquema de Cenário: Tentativa de cadastro com campos vazios
    Quando eu deixo de preencher um campo obrigatório
    Então eu clico no botão "Concluir cadastro" eu devo ver uma mensagem de alerta "<Mensagem de alerta>"
    
    Exemplos:
      | Campo     | Mensagem de alerta                                |
      | Nome      | "O campo Nome é obrigatório."                     |
      | Sobrenome | "O campo Sobrenome é obrigatório."                |
      | Email     | "O campo E-mail é obrigatório."                   |
      | Senha     | "O campo Senha é obrigatório."                    |
      | Endereço  | "O campo Endereço é obrigatório."                 |
