import 'package:flutter/material.dart';
import 'package:mis_gastos/gasto.dart';

class GastoItem extends StatelessWidget {
  final Gasto gasto;

  const GastoItem({super.key, required this.gasto});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(gasto.titulo),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text('\$${gasto.monto.toStringAsFixed(2)}'),
                Spacer(),
                Row(
                  children: [
                    Icon(categoriaIconos[gasto.categoria]),
                    SizedBox(
                      width: 8,
                    ),
                    Text(gasto.FormatearFecha)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
