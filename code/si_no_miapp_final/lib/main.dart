import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_miapp/config/theme/app_theme.dart';
import 'package:si_no_miapp/presentacion/chat/chat_pantalla.dart';
import 'package:si_no_miapp/presentacion/proveedor/chat_proveedor.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>ChatProveedor())
      ],
      child: MaterialApp(
        theme: AppTheme().tema(),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home:const ChatPantalla(),
      ),
    );
  }
}
