import 'package:flutter/material.dart';
import 'package:mis_gastos/gasto.dart';
import 'package:mis_gastos/gasto_item.dart';

class GastosLista extends StatelessWidget {
  final List<Gasto> gastos;
  const GastosLista({super.key, required this.gastos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: gastos.length,
        itemBuilder: (ctx, index) => Dismissible(
            key: ValueKey(gastos[index]),
            child: GastoItem(gasto: gastos[index])));
  }
}
