// Ao final da inserção das matérias e notas, deve-se somar as notas da matéria e calcular a média
// O cálculo deve ser a regra: SOMATÓRIO DAS NOTAS / QUANTIDADE DE NOTAS. Ex.: (10 + 8 + 9) / 3
void calculaMedia(Map<String, List<double>> boletim) {
  boletim.forEach((materia, notas) {
    double media = 0;

    for (double nota in notas) {
      media += nota; // media = 0 + 10 ...
    }

    media /= notas.length;

    // O sistema de aprovação deve seguir a regra:
    // - < 5: Reprovado
    // - >= 5 < 7: Recuperação
    // - >= 7: Aprovado
    // Como saída do programa, deve conter o nome da matéria, sua média final e se foi aprovado ou não
    // Ex.: Desenvolvimento Mobile: 8.5 - Aprovado
    switch (media) {
      case >= 7:
        print("$materia: $media - Aprovado"); // mobile: 7 - Aprovado
      case >= 5:
        print("$materia: $media - Recuperação"); // mobile: 5 - Reprovação
      case < 5:
        print("$materia: $media - Reprovado"); // mobile: 4 - Reprovado
    }
  });
}