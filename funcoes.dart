// Isso é uma função
// void - Sem retorno (limbo)

void funcaoSimples() {
  print("Olá!");
}

void somaDoisNumeros(int num1, int num2) {
  print(num1 + num2);
}

void formataData([int dia = 21, int mes = 8, int ano = 2023]) { // O [] representa todos os parametros que são opcionais, eles necessitam de um valor padrão.
// void formataData([int? dia, int? mes, int? ano]) {
  // if (dia == null) {
    // dia = 21;
  // }
  print("$dia/$mes/$ano");
}

void saudacao({String? nome, int idade = 18}) { // O ? fala para a função que o nome pode ser nulo, mas sem o ? também é possível definir um valor padrão. {String nome = "João"}
  print("Boa noite, $nome, sua idade é $idade");
}

double calcularMedia(List<double> notas) {
  double media = 0;

  for (double nota in notas) {
    media += nota;
  }

  media /= notas.length;

  return media;
}

void main() {
  funcaoSimples(); // Executando uma função
  // funcaoSimples; // Refereciando uma função;

  somaDoisNumeros(2, 5); // 7
  // somaDoisNumeros("2", 2.5) // Não é permitido;

  formataData(10, 8, 2021);
  formataData();

  saudacao(nome: "Mateus", idade: 24);
  formataData();

  double resultado = calcularMedia([10, 6, 7.5, 9]);
  print(resultado);
}