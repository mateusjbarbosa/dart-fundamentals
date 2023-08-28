import 'dart:io';

double perguntaNota() {
  double nota = 0;

  stdout.write("Digite a nota do aluno ou -1 para sair: ");
  nota = double.parse(stdin.readLineSync().toString());

  return nota;
}