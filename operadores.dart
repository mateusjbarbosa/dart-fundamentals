void main() {
  int a = 3;
  int b = 7;

  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);

  bool estaCalor = true;
  bool estaNevando = false;
  print(estaCalor && estaNevando);
  print(estaCalor || estaNevando);

  a += b;
  print(a);
  a -= b;
  print(a);
  a *= b;
  print(a);

  print(a > b);
  print(a < b);
  print(a >= b);
  print(a != b);
  print(a == b);
  print(3 == "3");

  int c = 0;
  print(c++); // c = c + 1;
  print(++c);
  print(--c);
  print(c--);
}