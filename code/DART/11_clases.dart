void main() {
  final Estudiantes luis = Estudiantes('luis', 'lara');
  print(luis.nombre);
  print(luis.ap);
}

class Estudiantes {
  String nombre;
  String ap;

  // Estudiantes(String minombre, String miap)
  //     : nombre = minombre,
  //       ap = miap;

  Estudiantes(this.nombre, this.ap);
}
