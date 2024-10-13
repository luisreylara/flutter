import 'package:flutter/material.dart';
import 'package:videos_irt/dominio/entidades/video.dart';
import 'package:videos_irt/presentacion/widgets/video_botones.dart';
import 'package:videos_irt/presentacion/widgets/video_gradiente.dart';
import 'package:videos_irt/presentacion/widgets/video_reproductor.dart';

class VideoScroll extends StatelessWidget {

  final List<Video> videosLista;
  const VideoScroll({super.key, required this.videosLista});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: videosLista.length,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context,index){
        final Video video = videosLista[index];
        return Stack(
          children: [

            SizedBox.expand(
              child: VideoReproductor(videoUrl: video.videoUrl, titulo: video.titulo)),
            const VideoGradiente(
              colors: [Colors.transparent,Colors.black87], 
              stops: [0.9,1.0]
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoBotones(video: video))
          ],
        );
      },
      
    );
  }
}