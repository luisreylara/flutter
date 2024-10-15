
import 'package:dio/dio.dart';
import 'package:si_no_miapp/dominio/entidades/mensaje.dart';

class ObtenerSiNoRespuesta {

  final _dio=Dio();
  

  Future <Mensaje> obtenerRespuesta(String texto) async {
    String miLink = 'https://pokeapi.co/api/v2/pokemon/''$texto';
    final respuesta = await _dio.get(miLink);
     
   // String cadena= 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/';
    String cadena= 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/shiny/';
    
    String res= 'NAME: ''${respuesta.data['name']}''     ID: ''${respuesta.data['id']}';
    return Mensaje(
      texto: res,
      deQuien: DeQuien.crush,
      imagenUrl: '$cadena''${respuesta.data['id']}''.gif',
    );
  }
}