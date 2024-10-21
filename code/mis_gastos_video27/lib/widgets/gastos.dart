import 'package:flutter/material.dart';
import 'package:gastos_app/widgets/gasto_lista.dart';
import 'package:gastos_app/modelo/gasto.dart';
import 'package:gastos_app/widgets/ventana_nuevo_gasto.dart';

class Gastos extends StatefulWidget {
  const Gastos({super.key});

  @override
  State<Gastos> createState() => _GastosState();
}

class _GastosState extends State<Gastos> {

  final List<Gasto> _listaGastos = [
    Gasto(
    titulo: 'Cine', 
    monto: 800.00, 
    fecha: DateTime.now(), 
    categoria: Categoria.ocio
    ),

    Gasto(
      titulo: "Libro de Flutter", 
      monto: 1500.00, 
      fecha: DateTime.now(), 
      categoria: Categoria.escuela)
];
void _abrirVentanaNuevoGasto(){
  showModalBottomSheet(
    context: context, 
    builder: (ctx)=> VentanaNuevoGasto());
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Gastos'),
        actions: [
          IconButton(
            onPressed: _abrirVentanaNuevoGasto, 
            icon: Icon(Icons.add_outlined))
        ],
      ),
      body: GastoLista(listaGastos: _listaGastos),
    );
  }
}