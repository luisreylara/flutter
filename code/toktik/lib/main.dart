import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videos_irt/config/tema/app_tema.dart';
import 'package:videos_irt/presentacion/pantallas/video/video_pantalla.dart';
import 'package:videos_irt/presentacion/proveedor/video_proveedor.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>VideoProveedor()..cargarProximaPagina()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTema().getTema(),
        title: 'Videos IRT',
        home: const VideoPantalla(),
      ),
    );
  }
}