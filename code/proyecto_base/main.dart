//Clase Lunes23sep
//main.dart

import 'package:flutter/material.dart';
import 'package:lunes23sep/pantalla_externa.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
theme: ThemeData(
brightness: Brightness.dark ,
useMaterial3: false,
colorSchemeSeed: Colors.cyan ),
title: 'Material App',
home: const MiWidgetExterno(),
);
}
}
