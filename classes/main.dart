// import './Pessoa.dart';
import './PessoaFisica.dart';
import './PessoaJuridica.dart';

void main() {
  // Pessoa novoCliente = new Pessoa(nome: "Mateus", dataNascimento: "10/03/1999");
  // print(novoCliente.nome);

  PessoaFisica mateusPessoaFisica = new PessoaFisica(
    nome: "Mateus PF",
    cpf: "123.345.456.78",
    dataNascimento: "10/03/1999",
    corCabelo: "Preto",
  );
  print(mateusPessoaFisica.corCabelo);
  mateusPessoaFisica.pintarCabelo("Roxo");
  print(mateusPessoaFisica.corCabelo);

  PessoaFisica vinDieselCareca = new PessoaFisica(
    nome: "Vin Diesel",
    cpf: "111.111.111-11",
    dataNascimento: "10/04/1980",
    corCabelo: "Vermelho",
  );
  print(vinDieselCareca.corCabelo);
  vinDieselCareca.pintarCabelo("Preto");
  print(vinDieselCareca.corCabelo);

  PessoaJuridica mateusJuridico = new PessoaJuridica(
    nome: "Mateus PJ",
    cnpj: "11.111.111/0001-11",
    corCabelo: "Vermelho",
  );
  print("----");
  print(mateusJuridico.corCabelo);
  mateusJuridico.pintarCabelo("Preto");
  print(mateusJuridico.corCabelo);
}
