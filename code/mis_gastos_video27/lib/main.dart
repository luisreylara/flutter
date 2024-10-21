import 'package:flutter/material.dart';
import 'package:gastos_app/widgets/gastos.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.amber
      ),
     
      title: 'App Gastos',
      home: Gastos(),
    );
  }
}