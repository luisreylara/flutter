import 'package:flutter/material.dart';
import 'package:mis_gastos/gastos.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false, colorSchemeSeed: Colors.amber),
      title: 'Material App',
      home: Gastos(),
    );
  }
}
