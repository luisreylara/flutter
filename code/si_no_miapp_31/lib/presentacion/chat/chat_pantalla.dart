

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_miapp/dominio/entidades/mensaje.dart';
import 'package:si_no_miapp/main.dart';
import 'package:si_no_miapp/presentacion/proveedor/chat_proveedor.dart';
import 'package:si_no_miapp/presentacion/widgets/chat/caja_mis_mensajes.dart';
import 'package:si_no_miapp/presentacion/widgets/chat/crush_mensajes_burbuja.dart';
import 'package:si_no_miapp/presentacion/widgets/chat/mis_mensajes_burbuja.dart';
class ChatPantalla extends StatelessWidget {
  const ChatPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _chatVista(),
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://sites-cf.mhcache.com/t/368/341/43368341/505/505391_273002w5k16ft16018115t_A_96x96/BhL--nP4l12Ku1vzH9jfmKzdXiI=/.jpg'),
          ),
        ),
        title: const Text('Mi Crush'),
        centerTitle: false,
      ),
    );
  }
}

class _chatVista extends StatelessWidget {
  const _chatVista({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final chatProvedor = context.watch<ChatProveedor>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvedor.mensajeLista.length,
                itemBuilder: (context, index) {
                  final mensaje= chatProvedor.mensajeLista[index];
                  return (mensaje.deQuien == DeQuien.mio)
                  ?  MisMensajesBurbuja(mensaje: mensaje,)
                  : const CrushMensajesBurbuja();
                },)
            ),
             CajaMisMensajes(
              unValor: (valor) => chatProvedor.enviarMensaje(valor),
            )
          ],
        ),
      ),
    );
  }
}