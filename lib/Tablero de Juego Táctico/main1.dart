import 'package:flutter/material.dart';

void main() {
  runApp(const TableroDeJuego());
}

class TableroDeJuego extends StatelessWidget {
  const TableroDeJuego({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Tablero de Juego Táctico"), backgroundColor: Colors.blueGrey[900],),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(flex: 2, child: Container(color: Colors.blueGrey[600])),
                  Expanded(child: Container(color: Colors.blueGrey[800])),
                ],
              ),
            ),
            Expanded(child: Container(color: Colors.grey[200])),
          ],
        ),
      ),
    );
  }
}
