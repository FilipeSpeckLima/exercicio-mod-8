Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

Contexto: que estou na página de um produto disponível

  Esquema de Cenário: Seleções obrigatórias para configuração do produto
    Quando eu seleciono <Cor>, <Tamanho> e <Quantidade>
    Então <Resultado esperado>

    Exemplos:
      | Cor    | Tamanho | Quantidade | Resultado esperado                         |
      | Azul   | M       | 1          | Produto adicionado ao carrinho com sucesso |
      |        | M       | 1          | Erro: Cor é obrigatória                    |
      | Azul   |         | 1          | Erro: Tamanho é obrigatório                |
      | Azul   | M       |            | Erro: Quantidade é obrigatória             |

  Esquema de Cenário: Limite máximo de produtos por venda
    Quando eu seleciono uma quantidade de <Quantidade>
    Então o sistema deve <Resultado esperado>

    Exemplos:
      | Quantidade | Resultado esperado                                              |
      | 5          | Permitir a adição do produto ao carrinho                        |
      | 10         | Permitir a adição do produto ao carrinho                        |
      | 11         | Exibir erro: Limite máximo de 10 unidades por venda             |

  Esquema de Cenário: Limpar configurações do produto
    Quando que selecionei cor, tamanho e quantidade de um produto
    Entâo eu clico no botão "Limpar"
    
    Exemplos:
      | Cor    | Tamanho | Quantidade | Ação    | Estado após "Limpar"                              |
      | Azul   | M       | 2          | Limpar  | Cor: vazio, Tamanho: vazio, Quantidade: vazio     |
      | Verde  | L       | 1          | Limpar  | Cor: vazio, Tamanho: vazio, Quantidade: vazio     |