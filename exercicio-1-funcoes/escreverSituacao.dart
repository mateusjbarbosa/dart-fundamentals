void escreverSituacao(String materia, double media) {
  switch (media) {
    case >= 7:
      print("$materia: $media - Aprovado");
    case >= 5:
      print("$materia: $media - Recuperação");
    case < 5:
      print("$materia: $media - Reprovado");
  }
}
