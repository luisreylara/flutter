import 'package:flutter/material.dart';
import 'package:videos_irt/dominio/entidades/video.dart';
class VideoScroll extends StatelessWidget {

  final List<Video> videosLista;
  const VideoScroll({super.key, required this.videosLista});



  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      children: [
        Container(color: Colors.red,),
        Container(color: Colors.blue,),
        Container(color: Colors.green,),
        Container(color: Colors.pink,),

      ],
    );
  }
}