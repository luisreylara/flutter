import 'package:flutter/material.dart';

class MiScreenFunciones extends StatefulWidget {
  const MiScreenFunciones({super.key});

  @override
  State<MiScreenFunciones> createState() => _MiScreenFuncionesState();
}

class _MiScreenFuncionesState extends State<MiScreenFunciones> {
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
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.restart_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm_outlined))
        ],
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
              'Click${contaClicks == 1 ? '' : 's'} ',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
