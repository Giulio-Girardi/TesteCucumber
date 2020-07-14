# language:pt

Funcionalidade: Validar informações do endereço via Cep

  #Contexto abrange mais de um cenário

  Contexto:
    Dado que acessei a api ViaCep

  Esquema do Cenario: Inserir cep para verificar o nome da sua rua
    #Dado que acessei a api ViaCep
    Quando informei o cep "<CEP>"
    Então deverá mostrar o nome da rua "<RUA>"
    Exemplos:
      | CEP       | RUA                      |
      | 90220-007 | Avenida Farrapos         |
      | 88032-005 | Rodovia José Carlos Daux |
      | 97546-550 | Avenida Tiaraju          |


  Esquema do Cenario: Inserir cep para verificar o nome do bairro
    #Dado que acessei a api ViaCep
    Quando informei o cep "<CEP>"
    Então deverá mostrar o nome do bairro "<BAIRRO>"
    Exemplos:
      | CEP       | BAIRRO      |
      | 90220-007 | Navegantes  |
      | 88032-005 | Saco Grande |
      | 97546-550 | Ibirapuitã  |


  Esquema do Cenario: Inserir cep para verificar a cidade
    #Dado que acessei a api ViaCep
    Quando informei o cep "<CEP>"
    Então deverá mostrar o nome do cidade"<CIDADE>"
    Exemplos:
      | CEP       | CIDADE        |
      | 90220-007 | Porto Alegre  |
      | 97546-550 | Alegrete      |
      | 88032-005 | Florianópolis |

  Esquema do Cenario: Inserir o cep para verificar a uf
    #Dado que acessei a api ViaCep
    Quando informei o cep "<CEP>"
    Então deverá mostrar o nome da uf "<UF>"
    Exemplos:
      | CEP       | UF |
      | 90220-007 | RS |
      | 97546-550 | RS |
      | 88032-005 | SC |