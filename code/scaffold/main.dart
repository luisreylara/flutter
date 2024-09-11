import 'package:flutter/material.dart';
import 'package:martes10/clase_afuera.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(Object context) {
    return const MaterialApp(
      home: CounterMio(),
    );
  }
}
