import 'package:flutter/material.dart';
import 'package:videos_irt/config/ayudantes/formato_numeros.dart';
import 'package:videos_irt/dominio/entidades/video.dart';

class VideoBotones extends StatelessWidget {

  final Video video;
  const VideoBotones({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _PersonalizarrBoton(valor: video.likes, iconData: Icons.favorite, color: Colors.red),
        _PersonalizarrBoton(valor: video.views, iconData: Icons.remove_red_eye_outlined, color: Colors.blue)
        
      ],
    );
  }
}

class _PersonalizarrBoton extends StatelessWidget {

  final int valor;
  final IconData iconData;
  final Color color;
  const _PersonalizarrBoton({
    required this.valor, 
    required this.iconData, 
    required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){}, icon:  Icon(iconData, color:color)),
        Text('${FormatoNumeros.numeroCompacto(valor.toDouble())}')
      ],
              
    );
  }
}
