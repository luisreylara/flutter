void main() {
  final miCuadrado = Cuadrado(lado: 50);
  print('Area: ${miCuadrado.calcularArea()}');
  miCuadrado.setSide = 2;
  print('Area: ${miCuadrado.calcularArea()}');
}

class Cuadrado {
  double _lado;

  Cuadrado({required double lado}) : _lado = lado;

  double calcularArea() {
    return _lado * _lado;
  }

  double get getLado {
    return _lado;
  }

  void set setSide(double value) {
    _lado = value;
  }
}
