import 'dart:io';

String perguntaMateria() {
  String materia = "";

  stdout.write("Digite o nome da matéria ou digite sair para encerrar: ");
  materia = stdin.readLineSync().toString();

  return materia;
}