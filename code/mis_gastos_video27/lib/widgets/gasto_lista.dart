import 'package:flutter/material.dart';
import 'package:gastos_app/widgets/gasto_item.dart';
import 'package:gastos_app/modelo/gasto.dart';

class GastoLista extends StatelessWidget {

  final List<Gasto> listaGastos;
  const GastoLista({super.key, required this.listaGastos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaGastos.length,
      itemBuilder: (context,index) => GastoItem(
        gasto: listaGastos[index])
       );
  }
}
