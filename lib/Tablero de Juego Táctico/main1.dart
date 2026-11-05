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
          title: const Text("Tablero de Juego Táctico", style: TextStyle(color: Colors.grey),),
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
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: List.generate(4, (row) {
                            return Expanded(
                              child: Row(
                                children: List.generate(4, (colunm) {
                                  return Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey[400],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.shield,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blueGrey[800],
                        ),
                        margin: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildPlayerPanel(
                              "Jugador 1",
                              Icons.person,
                              Colors.blue,
                              120,
                            ),
                            _buildPlayerPanel(
                              "Jugador 2",
                              Icons.person_outlined,
                              Colors.red,
                              120,
                            ),
                          ],
                        ),
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
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          _buildHistoryTile(
                            1,
                            "Jugador 1",
                            Colors.red,
                            "Caballero a la casilla C4",
                          ),
                          _buildHistoryTile(
                            2,
                            "Jugador 2",
                            Colors.orange,
                            "Caballero a la casilla C4",
                          ),
                          _buildHistoryTile(
                            3,
                            "Jugador 1",
                            Colors.red,
                            "Caballero a la casilla C4",
                          ),
                          _buildHistoryTile(
                            4,
                            "Jugador 2",
                            Colors.orange,
                            "Caballero a la casilla C4",
                          ),
                        ],
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

Widget _buildPlayerPanel(String name, IconData icon, Color color, int points) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 12),
      Icon(icon, color: color, size: 48),
      const SizedBox(height: 12),
      Text("Puntos: $points", style: const TextStyle(color: Colors.white)),
    ],
  );
}

Widget _buildHistoryTile(int indice, String jugador, Color color, String descripcion) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: color,
      child: Text(
        indice.toString(),
        style: const TextStyle(color: Colors.white),
      ),
    ),
    title: Text(
      "$jugador movió pieza",
      style: const TextStyle(
        color: Colors.black,
      ),
    ),
    subtitle: Text(descripcion, style: const TextStyle(color: Colors.grey)),
    trailing: const Icon(Icons.history, color: Colors.black),
  );
}
