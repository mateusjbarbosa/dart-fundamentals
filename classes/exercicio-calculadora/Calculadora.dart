class Calculadora {
  // List<String> historico = [];
  late List<String>
      _historico; // late significa inicio tardio. Colocar _ antes do nome, define a variavel como privada, fazendo com que ela não seja vista para fora da classe.

  Calculadora() {
    this._historico = [];
  }

  double somar(double num1, double num2) {
    return num1 + num2;
  }

  double subtrair(double num1, double num2) {
    return num1 - num2;
  }

  double multiplicar(double num1, double num2) {
    return num1 * num2;
  }

  double dividir(double num1, double num2) {
    return num1 / num2;
  }

  void adicionarOperacaoNoHistorico(String operacao) {
    this._historico.add(operacao);
  }

  void printarHistorico() {
    print("--------");
    print("HISTÓRICO");
    print("--------");
    for (String operacao in this._historico) {
      print(operacao);
    }
  }
}
