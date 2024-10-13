
import 'package:intl/intl.dart';

class FormatoNumeros {

  static String numeroCompacto (double numero){
    final numeroFormateado= NumberFormat.compactCurrency(
        decimalDigits: 0,
        symbol: '',
    ).format(numero);
    return numeroFormateado;
  }
}