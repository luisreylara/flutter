
import 'package:flutter/material.dart';
import 'package:si_no_miapp/dominio/entidades/mensaje.dart';

class ChatProveedor extends ChangeNotifier{

  List<Mensaje> mensajeLista =[
    Mensaje(texto: 'Hola Crush!', deQuien: DeQuien.mio),
    Mensaje(texto: 'Ya regresaste?', deQuien: DeQuien.mio),
    
  ];

  Future<void> enviarMensaje (String texto) async {
    final nuevoMensaje = Mensaje(texto: texto, deQuien: DeQuien.mio);
    mensajeLista.add(nuevoMensaje);

    notifyListeners();

  }


}