//agregar $flutter pub add uuid
// instalar: flutter pub add intl

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final formateador = DateFormat.yMMMd();

enum Categoria { comida, viaje, ocio, trabajo }

const categoriaIconos = {
  Categoria.comida: Icons.lunch_dining,
  Categoria.viaje: Icons.flight_takeoff,
  Categoria.ocio: Icons.movie,
  Categoria.trabajo: Icons.work
};

class Gasto {
  final String id;
  final String titulo;
  final double monto;
  final DateTime fecha;
  final Categoria categoria;

  Gasto(
      {required this.titulo,
      required this.monto,
      required this.fecha,
      required this.categoria})
      : id = uuid.v4();

  String get FormatearFecha {
    return formateador.format(fecha);
  }
}
