import 'dart:io';
import 'dart:math';

main() {
  var nota = Random().nextInt(11);
  print("Nota selecionada foi $nota.");

  if (nota >= 9) {
    print('Quadro de Honra!');
  } else if (nota >= 7) {
    print('Aprovado!');
  } else if (nota >= 5) {
    print('Recuperação!');
  } else if (nota >= 4) {
    print('Recuperação + Trabalho!');
  } else {
    print('Reprovado!');
  }

  for (int a = 1; a <= 10; a += 2) {
    print('a = $a');
  }
  for (int a = 100; a >= 0; a -= 4) {
    print('a = $a');
  }

  int b = 0;
  for (; b <= 10; b++) {
    print('b = $b');
  }
  print('[FORA] b = $b');

  var notas = [8.9, 9.3, 7.8, 6.9, 9.1];
  for (var nota in notas) {
    print("O valor da nota é $nota.");
  }

  var coordenadas = [
    [1, 3],
    [9, 1],
    [19, 23],
    [2, 14],
  ];
  for (var coordenada in coordenadas) {
    for (var ponto in coordenada) {
      print("Valor do ponto é $ponto");
    }
  }

  Map<String, double> boletim = {
    'João Pedro': 9.1,
    'Maria Augusta': 7.2,
    'Ana Silva': 6.4,
    'Roberto Andrade': 8.8,
    'Pedro Firmino': 9.9,
  };
  for (String nome in boletim.keys) {
    print("Nome do aluno é $nome e a nota é ${boletim[nome]}");
  }
  for (var nota in boletim.values) {
    print("A nota é $nota");
  }
  for (var registro in boletim.entries) {
    print("O ${registro.key} tem nota ${registro.value}.");
  }

  var digitado = '';
  while (digitado != 'sair') {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync().toString();
  }
  do {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync().toString();
  } while (digitado != 'sair');

  var num = Random().nextInt(11);
  print('A número sorteada foi $num.');

  switch (nota) {
    case 10:
    case 9:
      print('Quadro de Honra!');
      print('Parabéns!');
      break;
    case 8:
    case 7:
      print('Aprovado!');
      break;
    case 6:
    case 5:
    case 4:
      print('Recuperação!');
      break;
    case 3:
    case 2:
    case 1:
    case 0:
      print('Reprovado!');
      break;
    default:
      print('Nota invádlida!');
  }

  for (int a = 0; a < 10; a++) {
    if (a == 6) {
      break;
    }
    print(a);
  }
  print('Depois do laço for #01');

  for (int a = 0; a < 10; a++) {
    if (a % 2 == 1) {
      continue;
    }
    print(a);
  }
  print('Depois do laço for #02');
}
