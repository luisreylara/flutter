void main() {
  print('Inicio');
  miHttpGet('https://youtube.com').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });
  print('Fin');
}

Future<String> miHttpGet(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    // throw 'Error a proposito en esta linea';
    return 'Respuesta de la peticion HTTP';
  });
}
