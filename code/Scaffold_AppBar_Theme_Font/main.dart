import 'package:flutter/material.dart';
import 'package:martes10/clase_afuera.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(Object context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false, colorSchemeSeed: Colors.deepPurpleAccent),
      home: CounterMio(),
    );
  }
}
