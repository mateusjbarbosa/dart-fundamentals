import 'dart:io';

double perguntarNota() {
  stdout.write("Escreva a nota do aluno ou -1 para sair: ");
  return double.parse(stdin.readLineSync().toString());
}
