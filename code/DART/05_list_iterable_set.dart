void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  print(numbers);
  print('list: $numbers');
  print('total elementos: ${numbers.length}');
  print('val 0: ${numbers[0]}');
  print('inicial: ${numbers.first}');
  print('final: ${numbers.last}');

  //ojo: parentesis
  print('al reves: ${numbers.reversed}');
  // ojo: Iterable
  final numerosReves = numbers.reversed;

  print('iterable; $numerosReves');
  print('List: ${numerosReves.toList()}');

  //ojo Sets --- no repetidos, valores únicos
  print('Set: ${numerosReves.toSet()}');

// que hace la siguiente linea? --- eliminamos los duplicados
  print('???? : ${numbers.toSet().toList()}');

  final numerosMayores5 = numbers.where((num) {
    return num > 5;
  });
  print('> 5: ${numerosMayores5}');
}
