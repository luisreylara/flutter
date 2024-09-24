import 'package:flutter/material.dart';

class MiScreen extends StatefulWidget {
  const MiScreen({super.key});

  @override
  State<MiScreen> createState() => _MiScreenState();
}

class _MiScreenState extends State<MiScreen> {
  int contaClicks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            contaClicks++;
          });
        },
        child: Icon(Icons.plus_one_outlined),
      ),
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$contaClicks',
              style: TextStyle(fontSize: 100),
            ),
            Text(
              'Clicks',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
