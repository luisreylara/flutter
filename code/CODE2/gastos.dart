import 'package:flutter/material.dart';
import 'package:mis_gastos/gasto.dart';
import 'package:mis_gastos/gastos_lista.dart';
import 'package:mis_gastos/nuevo_gasto.dart';

class Gastos extends StatefulWidget {
  const Gastos({super.key});

  @override
  State<Gastos> createState() => _GastosState();
}

class _GastosState extends State<Gastos> {
  final List<Gasto> _registroGasto = [
    Gasto(
        titulo: 'Cine',
        monto: 500,
        fecha: DateTime.now(),
        categoria: Categoria.ocio),
    Gasto(
        titulo: 'Laptop',
        monto: 10000,
        fecha: DateTime.now(),
        categoria: Categoria.trabajo),
    Gasto(
        titulo: 'Moto',
        monto: 50000,
        fecha: DateTime.now(),
        categoria: Categoria.trabajo),
    Gasto(
        titulo: 'Moto',
        monto: 50000,
        fecha: DateTime.now(),
        categoria: Categoria.trabajo),
    Gasto(
        titulo: 'Moto',
        monto: 50000,
        fecha: DateTime.now(),
        categoria: Categoria.trabajo),
    Gasto(
        titulo: 'Moto',
        monto: 50000,
        fecha: DateTime.now(),
        categoria: Categoria.trabajo),
    Gasto(
        titulo: 'Moto',
        monto: 50000,
        fecha: DateTime.now(),
        categoria: Categoria.trabajo),
    Gasto(
        titulo: 'Moto',
        monto: 50000,
        fecha: DateTime.now(),
        categoria: Categoria.trabajo),
    Gasto(
        titulo: 'Moto',
        monto: 50000,
        fecha: DateTime.now(),
        categoria: Categoria.trabajo),
  ];

  void _abrirVentanaAgregarGasto() {
    showModalBottomSheet(
        isScrollControlled: false,
        context: context,
        builder: (ctx) => NuevoGasto(paraAgregarGasto: _agregarGasto));
  }

  void _agregarGasto(Gasto gasto) {
    setState(() {
      _registroGasto.add(gasto);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = GastosLista(gastos: _registroGasto);

    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Gastos'),
        actions: [
          IconButton(
              onPressed: _abrirVentanaAgregarGasto,
              icon: Icon(Icons.plus_one_outlined))
        ],
      ),
      body: Column(
        children: [Text('Grafica'), Expanded(child: mainContent)],
      ),
    );
  }
}
