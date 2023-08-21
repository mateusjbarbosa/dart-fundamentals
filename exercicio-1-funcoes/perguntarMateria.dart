import 'dart:io';

String perguntarMateria() {
  stdout.write("Escreva o nome da matéria ou sair: ");
  return stdin.readLineSync().toString();
}
