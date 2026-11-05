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
        appBar: AppBar(
          title: const Text("Tablero de Juego Táctico"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blueGrey[600],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blueGrey[700],
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blueGrey[800],
                        margin: EdgeInsets.all(10),
                        child: Column(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                          "Historial de Movimientos",
                          textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black87
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
