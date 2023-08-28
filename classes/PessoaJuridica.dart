import './Pessoa.dart';

class PessoaJuridica extends Pessoa {
  String cnpj;

  PessoaJuridica({
    required super.nome,
    required this.cnpj,
    super.corCabelo,
    super.dataNascimento,
  });

  @override // sobreescrever
  void pintarCabelo(String novaCor) {
    super.pintarCabelo(novaCor);
    print("Acabei de emitir uma nota fiscal para pintar o cabelo.");
  }
}
