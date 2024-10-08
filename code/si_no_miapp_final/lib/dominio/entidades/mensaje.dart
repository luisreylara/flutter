
enum DeQuien {mio, crush}

class Mensaje {

  final String texto;
  final String? imagenUrl;
  final DeQuien deQuien;

  Mensaje({
      required this.texto, 
      this.imagenUrl, 
      required this.deQuien
    });
}