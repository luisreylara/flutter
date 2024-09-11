void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool estaVivo = true;
  bool? estaMuerto = false;
  final habilidades = ['programador'];
  final habilidades_2 = <String>['programador'];
  final List<String> habilidades_3 = ['programador'];
  final imagenes = <String>['inicio/mat1.png', 'inicio/mat2.png'];
// true false null
  estaMuerto = null;

  print("""

$pokemon
$hp

$estaMuerto
$habilidades
$estaVivo
$habilidades_3
$imagenes
$habilidades_2
""");
}
