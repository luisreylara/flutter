
class Video {

  final String titulo;
  final String videoUrl;
  final int likes;
  final int views;

  Video({
    required this.titulo, 
    required this.videoUrl, 
    this.likes=0, 
    this.views=0
  });



}