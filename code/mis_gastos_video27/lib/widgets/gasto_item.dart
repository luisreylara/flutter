
import 'package:flutter/material.dart';
import 'package:gastos_app/modelo/gasto.dart';

class GastoItem extends StatelessWidget {

  final Gasto gasto;
  const GastoItem({super.key, required this.gasto});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16
        ),
        child: Column(
        children: [
          Text(gasto.titulo),
          Row(
            children: [
              Text( '\$ ${gasto.monto.toStringAsFixed(2)}'),
              Spacer(),
              Icon(categoriaIconos[gasto.categoria]),
              Spacer(),
              Text(gasto.fechaFormateada)

            ],
          )
        ],
            ),
      ));
 } 
}