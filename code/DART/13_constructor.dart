void main() {
  final unJson = {'nombre': 'Joel', 'academia': 'ITR', 'estaVivo': true};

  final luislara =
      Maestro(academia: 'IRT', estaVivo: true, nombre: 'Luis Lara');
  print(luislara);

  final profesor = Maestro.desdeJSON(unJson);
  print(profesor);
}

class Maestro {
  String academia;
  String nombre;
  bool estaVivo;

  Maestro(
      {required this.academia, required this.nombre, required this.estaVivo});

  Maestro.desdeJSON(Map<String, dynamic> json)
      : nombre = json['nombre'] ?? 'No nombre',
        academia = json['academia'] ?? 'No academia',
        estaVivo = json['estaVivo'] ?? 'No estaVivo';

  @override
  String toString() => '$nombre $academia esta Vivo? ${estaVivo ? 'SI' : 'NO'}';
}
