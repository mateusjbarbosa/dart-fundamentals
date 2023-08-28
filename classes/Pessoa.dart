abstract class Pessoa {
  String nome;
  String? corCabelo;
  String? dataNascimento; // opcional

  Pessoa({required this.nome, this.corCabelo, this.dataNascimento});

  void pintarCabelo(String novaCor) {
    if (this.corCabelo != null) {
      this.corCabelo = novaCor;
    } else {
      print("Eu sou careca!");
    }
  }
}
