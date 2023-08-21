double calcularMedia(List<double> notas) {
  double media = 0;

  for (double nota in notas) {
    media += nota;
  }

  media /= notas.length;

  return media;
}
