import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PantallaVerde(),
    );
  }
}

class PantallaVerde extends StatefulWidget {
  const PantallaVerde({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StatePantallaVerde();
  }
}

class _StatePantallaVerde extends State<PantallaVerde> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(child: Center(child: Text("$_contador", style: const TextStyle(fontSize: 40)))),
            Expanded(child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){setState(() {
                  _contador--;
                });}, icon: const Icon(Icons.remove)),
                IconButton(onPressed: () {setState(() {
                  _contador = 0;
                });}, icon: const Icon(Icons.refresh)),
                IconButton(onPressed: (){setState(() {
                  _contador++;
                });}, icon: const Icon(Icons.add))
              ],
            ))
          ],
        )
    );
  }
}