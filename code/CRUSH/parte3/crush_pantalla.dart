import 'package:flutter/material.dart';

class CrushPantalla extends StatelessWidget {
  const CrushPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _chatView(),
      appBar: AppBar(
        title: Text('Mi Crush'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2018/09/96/96/Salma-Hayek-20.jpg?ve=1&tl=1'),
          ),
        ),
      ),
    );
  }
}

class _chatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text('Hola: $index');
              },
            ),
          ),
          FilledButton(onPressed: () {}, child: Text('Click Me')),
        ],
      ),
    );
  }
}
