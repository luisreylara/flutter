
import 'package:dio/dio.dart';
import 'package:si_no_miapp/dominio/entidades/mensaje.dart';

class ObtenerSiNoRespuesta {

  final _dio=Dio();
  Future <Mensaje> obtenerRespuesta() async {
    final respuesta = await _dio.get('https://yesno.wtf/api');
    

    return Mensaje(
      texto: respuesta.data['answer'],
      deQuien: DeQuien.crush,
      imagenUrl: respuesta.data['image']
    );
  }
}