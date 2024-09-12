void main() {
  // print(saludosTodos());
  // print(saludosTodos2());
  // print(sumar2NumerosA(2, 3));
  // //print(sumar2NumerosA(2, '3'));
  // print(sumar2NumerosB(3, 4));
  // // print(sumar2NumerosB(3, '4'));
  // print(sumar2NumerosC(3, 4));
  // print(sumar2NumerosD(3, 4));

  print('opc 1 ${sumar2NumerosD(10)}');
  print('opc 2 ${sumar2NumerosD(11)}');
}

// dynamic ojo, quita el String y analiza la funcion

String saludosTodos() {
  return 'Hola a Todos';
}

int sumar2NumerosA(a, b) {
  return a + b;
}

String saludosTodos2() => 'Hola a todos 2';

int sumar2NumerosB(int a, int b) {
  return a + b;
}

int sumar2NumerosC(int a, int b) => a + b;

int sumar2NumerosD(int a, [int? b]) {
  b = b ?? 0;
  //b ??= 0;

  return a + b;
}

int sumar2NumerosE(int a, [int b = 0]) {
  //b = b ?? 0;
  //b ??= 0;

  return a + b;
}
