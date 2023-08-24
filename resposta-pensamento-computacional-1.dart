// O programa a ser feito deve ser uma calculadora simples.
import 'dart:io';

void main() {
  // Deve ter a possibildade de receber operações até que o usuário peça para sair com o texto "Digite a operação respeitando o formato (2 + 2) ou digite sair: "
  String entrada = "";
  stdout.write(
      'Digite a operação respeitando o formato (2 + 2) ou digite sair: ');
  entrada = stdin.readLineSync().toString();

  List<String> historico = [];

  while (entrada.toLowerCase() != "sair") {
    // A calculadora deve reconhecer todas as operações por meio do operador entre os dois operandos.
    List<String> operacao = entrada.split(' ');

    // Apõs a inserção do usuário, o programa deve mostrar o resultado junto com a operação.
    switch (operacao[1]) {
      case '+':
        var resultado;

        if (operacao[0].contains('.') || operacao[2].contains('.')) {
          resultado = double.parse(operacao[0]) + double.parse(operacao[2]);
        } else {
          resultado = int.parse(operacao[0]) + int.parse(operacao[2]);
        }

        // O programa deve ser capaz de armazenar as operações realizadas durante o processo.
        String saida = "${operacao[0]} + ${operacao[2]} = $resultado";
        historico.add(saida);

        print(saida);
      case '-':
        var resultado;

        if (operacao[0].contains('.') || operacao[2].contains('.')) {
          resultado = double.parse(operacao[0]) - double.parse(operacao[2]);
        } else {
          resultado = int.parse(operacao[0]) - int.parse(operacao[2]);
        }

        String saida = "${operacao[0]} - ${operacao[2]} = $resultado";
        historico.add(saida);

        print(saida);
      case '*':
        var resultado;

        if (operacao[0].contains('.') || operacao[2].contains('.')) {
          resultado = double.parse(operacao[0]) * double.parse(operacao[2]);
        } else {
          resultado = int.parse(operacao[0]) * int.parse(operacao[2]);
        }

        String saida = "${operacao[0]} * ${operacao[2]} = $resultado";
        historico.add(saida);

        print(saida);
      case '/':
        var resultado = double.parse(operacao[0]) / double.parse(operacao[2]);

        String saida = "${operacao[0]} / ${operacao[2]} = $resultado";
        historico.add(saida);

        print(saida);
    }

    stdout.write('Digite a operação ou sair: ');
    entrada = stdin.readLineSync().toString();
  }

  // Quando o usuário encerrar a calculadora, deve ser mostrado o histórico realizado.
  print("-----------");
  print("Histórico");
  print("-----------");
  for (String operacao in historico) {
    print(operacao);
  }
}
