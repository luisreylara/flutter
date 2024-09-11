import 'package:flutter/material.dart';

class CounterMio extends StatelessWidget {
  const CounterMio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '10',
                style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                'Clicks',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.plus_one),
        ),
      ),
    );
  }
}
