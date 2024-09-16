void main() {
  emitirNumeros().listen((value) {
    print('Stream valor: $value');
  });
}

Stream<int> emitirNumeros() {
  return Stream.periodic(Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}
