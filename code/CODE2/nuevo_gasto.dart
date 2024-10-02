import 'package:flutter/material.dart';
import 'package:mis_gastos/gasto.dart';

class NuevoGasto extends StatefulWidget {
  final void Function(Gasto gasto) paraAgregarGasto;

  const NuevoGasto({super.key, required this.paraAgregarGasto});

  @override
  State<NuevoGasto> createState() => _NuevoGastoState();
}

class _NuevoGastoState extends State<NuevoGasto> {
  final _tituloControlador = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _tituloControlador,
          maxLength: 50,
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(label: Text('Titulo')),
        )
      ],
    );
  }
}
