
import 'package:videos_irt/dominio/entidades/video.dart';

class LocalVideoModelo {

  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModelo({
    required this.name, 
    required this.videoUrl, 
     this.likes=0, 
     this.views=0
     });

factory LocalVideoModelo.fromJson(Map<String,dynamic> json) => LocalVideoModelo(
  name: json['name'], 
  videoUrl: json['videoUrl'],
  likes: json['likes'],
  views: json['views']
  );

Video aEntidadVideo()=> Video(
  titulo: name, 
  videoUrl: videoUrl,
  likes:likes,
  views:views
  );
}