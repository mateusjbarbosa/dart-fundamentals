# Funções e Classes

Principal: Organização do código

- Funções
    - Métodos
    - Módulos
    - Quando usar funções?
        - Quando se repete código
        - Para isolar comportamento.
- Classes
    - Consiste em uma extensão de funções.
    - Nas funções, declaramos ações:
        - somaDoisNumeros();
        - concatenaStrings();
    - Em classe, declaramos domínio:
        - classe Pessoa {}
        - classe Carro {}
        - classe CarrinhoDeCompras {}
    - Uma classe sempre terá:
        - Variáveis
        - Funções (métodos)
    - Existe:
        - Classe padrão
        - Classe abstrata
            - Ela define características, mas ela não existe de forma unitária.
                - classe abstrata Pessoa {}
                - classe PessoaFisica extende Pessoa {}
                - classe PessoaJuridica extende Pessoa {}
            - Ela é utilizada para definir comportamentos semelhantes entre dois domínios
        - Interfaces
            - Tem somente características (variáveis) ou definição de comportamento (ex.: comprarProduto())
        - Toda classe é instanciada, que significa criar uma nova instância da classe.