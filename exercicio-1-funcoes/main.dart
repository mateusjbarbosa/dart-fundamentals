// O programa deve ser capaz de capturar as notas de uma determinada matéria.
import "./perguntaMateria.dart";
import './perguntaNota.dart';
import './calcularMedia.dart';

void main() {
  // Deve ter a possibilidade de capturar mais de uma matéria - OK
  String materia = "";
  Map<String, List<double>> boletim = {};

  materia = perguntaMateria();

  while (materia.toLowerCase() != "sair") {
    // Deve ter a possibilidade de capturar mais de uma nota por matéria - OK
    double nota = 0;
    List<double> notas = [];

    nota = perguntaNota();

    while (nota != -1) {
      notas.add(nota);

      nota = perguntaNota();
    }

    // boletim[portugues] = [10, 4, 6, 10]
    boletim[materia] = notas; // boletim[mobile] = [10, 6, 7.5, 8];

    materia = perguntaMateria();
  }

  calculaMedia(boletim);
}
