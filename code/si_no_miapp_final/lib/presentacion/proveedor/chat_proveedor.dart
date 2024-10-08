
import 'package:flutter/material.dart';
import 'package:si_no_miapp/config/ayudantes/obtener_si_no_respuesta.dart';
import 'package:si_no_miapp/dominio/entidades/mensaje.dart';

class ChatProveedor extends ChangeNotifier{
  final ScrollController chatScrollControlador = ScrollController();
  final ObtenerSiNoRespuesta obtenerSiNoRespuesta = ObtenerSiNoRespuesta();

  List<Mensaje> mensajeLista =[
    Mensaje(texto: 'Hola Crush!', deQuien: DeQuien.mio),
    Mensaje(texto: 'Ya regresaste?', deQuien: DeQuien.mio),
    
  ];

  Future<void> enviarMensaje (String texto) async {
    if (texto.isEmpty) return;
    final nuevoMensaje = Mensaje(texto: texto, deQuien: DeQuien.mio);
    mensajeLista.add(nuevoMensaje);
    if (texto.endsWith('?')){
      crushRespuesta();
    }

    notifyListeners();
    moverScrollAlFinal();

  }
  Future <void> crushRespuesta() async{

    final crushMensaje= await obtenerSiNoRespuesta.obtenerRespuesta();
    mensajeLista.add(crushMensaje);
    notifyListeners();
    moverScrollAlFinal();
  }

  Future<void> moverScrollAlFinal() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollControlador.animateTo(
      chatScrollControlador.position.maxScrollExtent, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut);

  }

}