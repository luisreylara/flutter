import 'package:flutter/material.dart';
import 'package:si_no_miapp/dominio/entidades/mensaje.dart';

class CrushMensajesBurbuja extends StatelessWidget {
  final Mensaje mensaje;
  
  const CrushMensajesBurbuja({super.key, required this.mensaje});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)
          ),
          child:  Padding(
              padding: 
               const  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(mensaje.texto ,style: const TextStyle(color: Colors.white),)
              ),
        ),
        const SizedBox(height: 5, ),
       _ImagenBurbuja(imagenURL: mensaje.imagenUrl!),
       const SizedBox(height: 10,)
      ],
    );
  }
}

class _ImagenBurbuja extends StatelessWidget {
  final String imagenURL;
  const _ImagenBurbuja({  required this.imagenURL});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width*0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: const Text('Mi Crush está enviando una imágen'),
          );
        },
        width: size.width*0.7,
        height: 150,
        fit: BoxFit.cover,
        imagenURL),
      );
  }
}

