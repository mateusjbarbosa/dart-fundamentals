void main() {
  int a = 4;
  print(a);

  double b = 3.5;
  print(b);
  print(b.roundToDouble());
  double b2 = -4.5;
  print(b2.abs());

  String nome = "João";
  String sobrenome = "Silva";
  print(nome + " " + sobrenome);
  print(nome.toUpperCase());
  print(nome.substring(1, 3));
  String saudacao = "Bom dia";
  print(saudacao.padRight(1, "!"));
  print("$saudacao, $nome $sobrenome");

  bool estaChovendo = false;
  bool estaFrio = true;
  // ignore: dead_code
  print(estaChovendo && estaFrio);
  print(estaChovendo || estaFrio);

  List frutas = ["Banana", "Maça", "Uva", 4];
  print(frutas);
  print(frutas[2]);
  print(frutas.elementAt(2));
  print(frutas.length);

  Map agendaTelefonica = {"joao": "35 9 9999-9999", "maria": "35 9 8888-8888"};
  print(agendaTelefonica);
  print(agendaTelefonica.keys);
  print(agendaTelefonica.values);
  print(agendaTelefonica['maria']);

  // ignore: equal_elements_in_set
  Set numeros = {1, 2, 3, 4, 5, 5};
  print(numeros);
  numeros.add(6);
  numeros.add(6);
  print(numeros);

  var c;
  c = "texto";
  print(c);

  dynamic d = 4;
  d = "texto";
  print(d);
}
