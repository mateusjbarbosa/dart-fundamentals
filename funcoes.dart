void funcaoSimples() {
  print("Olá");
}

void somaDoisNumeros(int num1, int num2) {
  print(num1 + num2);
}

void formataData([int dia = 21, int mes = 8, int ano = 2023]) {
  print("$dia/$mes/$ano");
}

void saudacao({String? nome}) {
  print("Boa noite, $nome!");
}

double calcularMedia(List<double> notas) {
  double media = 0;

  for (double nota in notas) {
    media += nota;
  }

  return media / notas.length;
}

void main() {
  funcaoSimples();
  somaDoisNumeros(2, 2);
  formataData();
  formataData(01, 01, 2021);
  saudacao(nome: "Mateus");
  saudacao();

  List<double> notas = [10, 9.5, 6.5, 7];
  double resultado = calcularMedia(notas);
  print(resultado);

  var funcaoEmVariavel = () => 2 + 2;
  print(funcaoEmVariavel());

  List<double> notasAcimaDaMedia = notas.where((nota) => nota >= 8).toList();
  print(notasAcimaDaMedia);
}
