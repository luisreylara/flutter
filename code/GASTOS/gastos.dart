import 'package:flutter/material.dart';
import 'package:mis_gastos/gasto.dart';
import 'package:mis_gastos/gastos_lista.dart';

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

  @override
  Widget build(BuildContext context) {
    Widget mainContent = GastosLista(gastos: _registroGasto);

    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Gastos'),
      ),
      body: Column(
        children: [Text('Grafica'), Expanded(child: mainContent)],
      ),
    );
  }
}
