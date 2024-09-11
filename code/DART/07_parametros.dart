void main() {
  print(obtenerPersonaD(nombre: 'Lara', mensaje: 'Saludos'));
}

String obtenerPersonaA(String nombre, String mensaje) {
  return 'Hola Luis';
}

String obtenerPersonaB({String? nombre, String? mensaje}) {
  return 'Hola Luis';
}

String obtenerPersonaC({String nombre = '', String mensaje = 'Hola, '}) {
  return 'Hola Luis';
}

String obtenerPersonaD({required String nombre, String mensaje = 'Hola, '}) {
  return '$mensaje $nombre';
}
