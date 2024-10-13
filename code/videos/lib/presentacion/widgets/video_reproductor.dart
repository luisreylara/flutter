
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoReproductor extends StatefulWidget {

  final String videoUrl;
  final String titulo;
  const VideoReproductor({
    super.key, 
    required this.videoUrl, 
    required this.titulo
  });

  @override
  State<VideoReproductor> createState() => _VideoReproductorState();
}

class _VideoReproductorState extends State<VideoReproductor> {

  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.videoUrl)
     ..setVolume(0)
     ..setLooping(true)
     ..play();
  }
@override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.initialize(), 
      builder: (context,snapshot){
         if(snapshot.connectionState!= ConnectionState.done){
          return const Center(child: CircularProgressIndicator(strokeWidth: 2,),);
         } 
         return GestureDetector(
          onTap: (){
            if ( controller.value.isPlaying){
              controller.pause();
              return;
            }
            controller.play();
          },
           child: AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: Stack(
              children: [
                VideoPlayer(controller),
                Positioned(
                  bottom: 50,
                  left: 20,
                  child: _VideoTitulo(titulo: widget.titulo)
                  )
              ],
            ),
                   ),
         );


        
      },  );
  }
}

class _VideoTitulo extends StatelessWidget {
  final String titulo;
  const _VideoTitulo({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //final tituloEstilo = AppTema().getTema;
    final tituloEstilo = Theme.of(context).textTheme.titleLarge;

    return SizedBox(
      width: size.width*.6,
      child: Text(titulo, maxLines: 2,style: tituloEstilo,),
    );

    
  }
}