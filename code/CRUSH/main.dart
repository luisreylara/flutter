import 'package:crush_app/crush_pantalla.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false, colorSchemeSeed: Colors.amber),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Crush app'),
        ),
        body: const Center(
          child: CrushPantalla(),
        ),
      ),
    );
  }
}
