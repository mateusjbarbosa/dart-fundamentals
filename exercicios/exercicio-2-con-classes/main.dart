import 'dart:io';

import './Calculadora.dart';

List<String> capturarOperacao() {
  stdout.write("Digite a operação que deseja:");
  String entrada = stdin.readLineSync().toString();

  return entrada.split(" "); // [2, +, 2]
}

double calcular(Calculadora calculadora, List<String> operacao) {
  double resultado = 0;

  switch (operacao[1]) {
    case "+":
      resultado = calculadora.somar(
        double.parse(operacao[0]),
        double.parse(operacao[2]),
      );
    case "-":
      resultado = calculadora.subtrair(
        double.parse(operacao[0]),
        double.parse(operacao[2]),
      );
    case "*":
      resultado = calculadora.multiplicar(
        double.parse(operacao[0]),
        double.parse(operacao[2]),
      );
    case "/":
      resultado = calculadora.dividir(
        double.parse(operacao[0]),
        double.parse(operacao[2]),
      );
  }

  return resultado;
}

void main() {
  // Definir uma classe calculadora
  // Ter uma lista de operações (histórico)
  // Metódos somar, subtrair...

  Calculadora calculadora = new Calculadora();
  List<String> operacao = capturarOperacao();
  double resultado = calcular(calculadora, operacao);

  String resposta = "${operacao[0]} ${operacao[1]} ${operacao[2]} = $resultado";
  calculadora.adicionarOperacaoNoHistorico(resposta);
  print(resposta);
  calculadora.printarHistorico();
}
