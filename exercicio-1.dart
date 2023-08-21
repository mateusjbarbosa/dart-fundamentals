import 'dart:io';

// O programa deve ser capaz de capturar as notas de uma determinada matéria.
void main() {
  // Deve ter a possibilidade de capturar mais de uma matéria.
  String materia = "";
  Map<String, List<double>> boletim = {};

  stdout.write("Escreva o nome da matéria ou sair: ");
  materia = stdin.readLineSync().toString();

  while (materia.toLowerCase() != "sair") {
    // Deve ter a possibilidade de capturar mais de uma nota por matéria.
    double nota = 0;
    List<double> notas = [];

    stdout.write("Escreva a nota do aluno ou -1 para sair: ");
    nota = double.parse(stdin.readLineSync().toString());

    while (nota != -1) {
      notas.add(nota);

      stdout.write("Escreva a nota do aluno ou -1 para sair: ");
      nota = double.parse(stdin.readLineSync().toString());
    }

    boletim[materia] = notas;

    stdout.write("Escreva o nome da matéria ou sair: ");
    materia = stdin.readLineSync().toString();
  }

  /** 
   * Ao final da inserção das matérias e notas, deve//se somar as notas da matéria e
   * calcular a média. O cálculo deve ser a regra: SOMATÓRIO DAS NOTAS / QUANTIADE DE NOTAS.
   * Ex.: (10 + 8 + 9) / 3
   * */
  /**
   *  O sistema de aprovação deve seguir a regra: 
   * < 5: Reprovado
   * >= 5 < 7: Recuperação
   * >= 7: Aprovado
   * */
  /** 
   * Como saída do programa, deve conter o nome da matéria, sua média final e se foi aprovado
   * ou não. 
   * Ex.: Desenvolvimento Mobile: 8.5 - Aprovado 
   * */
  boletim.forEach((materia, notas) {
    double media = 0;

    for (double nota in notas) {
      media += nota;
    }

    media /= notas.length;

    switch (media) {
      case >= 7:
        print("$materia: $media - Aprovado");
      case >= 5:
        print("$materia: $media - Recuperação");
      case < 5:
        print("$materia: $media - Reprovado");
    }
  });
}
