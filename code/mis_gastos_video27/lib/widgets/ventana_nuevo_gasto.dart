import 'package:flutter/material.dart';
import 'package:gastos_app/modelo/gasto.dart';

class VentanaNuevoGasto extends StatefulWidget {
  const VentanaNuevoGasto({super.key});

  @override
  State<VentanaNuevoGasto> createState() => _VentanaNuevoGastoState();
}

class _VentanaNuevoGastoState extends State<VentanaNuevoGasto> {

  DateTime? _fechaSeleccionada;
  Categoria _categoriaSeleccionada = Categoria.trabajo;

  void _mostrarCalendario()async {
    final ahora= DateTime.now();
    final primeraFecha = DateTime(ahora.year-1,ahora.month,ahora.day);
    final fechaCalendario= await showDatePicker(
      context: context, 
    firstDate: primeraFecha, 
    lastDate: ahora);

    setState(() {
      _fechaSeleccionada = fechaCalendario;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const TextField(
            maxLength: 50,
            decoration: InputDecoration(label: Text('Titulo')),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(label: Text('Costo')),
          ),
          Row(
            children: [
              Text( _fechaSeleccionada==null 
                ? 'Fecha no seleccionada'
                :formateado.format(_fechaSeleccionada!)),
              IconButton(
                onPressed: _mostrarCalendario, 
                icon:Icon(Icons.calendar_month),)
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Seleccionar Categoria'),
              SizedBox(width: 30,),
              DropdownButton(
                value: _categoriaSeleccionada,
                items: Categoria.values.map(
                  (micategoria)=> DropdownMenuItem(
                    value: micategoria,
                    child: Text(micategoria.name.toUpperCase()))
                ).toList(), 
                onChanged: (valor){
                  if (valor == null){
                    return;
                  }
                  setState(() {
                    _categoriaSeleccionada=valor;
                  });
                })

            ],
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Guardar Gasto')),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                child: Text('Cancelar')),
            ],
          )
        ],
      ),
    );
  }
}
