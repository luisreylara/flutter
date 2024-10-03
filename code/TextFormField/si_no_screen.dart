import 'package:cuadr_texto/campo_hacer_pregunta.dart';
import 'package:flutter/material.dart';

class SiNoScreen extends StatelessWidget {
  const SiNoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          CampoHacerPregunta()
        ],
      ),
    );
  }
}
