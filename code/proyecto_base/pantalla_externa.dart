//pantalla_externa.dart


import 'package:flutter/material.dart';

class MiWidgetExterno extends StatelessWidget {
const MiWidgetExterno({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Material App Bar'),
),
body: const Center(
child: Text('Hello World'),
),
);
}
}
