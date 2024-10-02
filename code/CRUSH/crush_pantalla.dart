import 'package:flutter/material.dart';

class CrushPantalla extends StatelessWidget {
  const CrushPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FilledButton(onPressed: () {}, child: Text('Click Me'))),
      appBar: AppBar(
        title: Text('Mi Crush'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhBKh3c5kYLlN-2Uc7r7Wlta05nCR1BaEbwQ&s'),
          ),
        ),
      ),
    );
  }
}
