import './Pessoa.dart';

class PessoaFisica extends Pessoa {
  String cpf;

  PessoaFisica({
    required super.nome,
    required this.cpf,
    super.corCabelo,
    super.dataNascimento,
  });
}
