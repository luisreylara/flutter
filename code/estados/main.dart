import 'package:estados/contador.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false,
          colorSchemeSeed: Colors.amber,
          brightness: Brightness.light),
      title: 'Material App',
      home: MiScreen(),
    );
  }
}
