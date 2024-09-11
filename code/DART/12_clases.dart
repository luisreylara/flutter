void main() {
  final Estudiantes luis = Estudiantes(nombre: 'luis', ap: 'lara');
  print(luis);
  print(luis.nombre);
  print(luis.ap);
}

class Estudiantes {
  String nombre;
  String ap;

  Estudiantes({required this.nombre, required this.ap});

  @override
  String toString() {
    return '$nombre - $ap';
  }
}
