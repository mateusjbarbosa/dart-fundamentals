import './calcularMedia.dart';
import './escreverSituacao.dart';
import './perguntarMateria.dart';
import './perguntarNota.dart';

void main() {
  String materia = "";
  Map<String, List<double>> boletim = {};

  materia = perguntarMateria();
  while (materia.toLowerCase() != "sair") {
    double nota = 0;
    List<double> notas = [];

    nota = perguntarNota();
    while (nota != -1) {
      notas.add(nota);
      nota = perguntarNota();
    }

    boletim[materia] = notas;

    materia = perguntarMateria();
  }

  boletim.forEach((materia, notas) {
    double media = calcularMedia(notas);

    escreverSituacao(materia, media);
  });
}
