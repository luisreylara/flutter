import 'package:flutter/material.dart';
import 'package:videos_irt/compartido/datos/videos_locales.dart';
import 'package:videos_irt/dominio/entidades/video.dart';
import 'package:videos_irt/infraestructura/modelo/local_video_modelo.dart';
 
class VideoProveedor extends ChangeNotifier{
  bool iniciandoCarga = true;
  List<Video> videosLista = [];

  Future <void> cargarProximaPagina() async {

    await Future.delayed(const Duration(seconds: 2));

  final List<Video> nuevoVideosLista = videosLocales.map(
  (miVideo) => LocalVideoModelo.fromJson(miVideo).aEntidadVideo()
  ).toList();

  videosLista.addAll(nuevoVideosLista);
  iniciandoCarga=false;
  notifyListeners();
  

  }
}