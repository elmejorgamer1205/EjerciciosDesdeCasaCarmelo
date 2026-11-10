import 'dart:math';
import 'package:flutter/material.dart';

import 'mock_data_PPT.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String idJugadaP1 = "Jugada 1";
  String idJugadaP2 = "Jugada 2";
  String resultMessage = "Pulsa para Jugar";

  final Random random = Random();

  void _jugar() {
    setState(() {
      int randomIndex1 = random.nextInt(mockJugadas.length);
      int randomIndex2 = random.nextInt(mockJugadas.length);

      idJugadaP1 = mockJugadas[randomIndex1].id;
      idJugadaP2 = mockJugadas[randomIndex2].id;

      resultMessage = _determinarGanador(idJugadaP1, idJugadaP2);
    });
  }

  String _determinarGanador(String idJ1, String idJ2) {
    if (idJ1 == idJ2) {
      return "Empate";
    }

    Jugada jugadaP1 = obtenerJugadaPorId(idJ1);

    if (jugadaP1.venceAId == idJ2) {
      return "Gano el Jugador 1";
    } else {
      return "Ganó el Jugador 2";
    }
  }

  @override
  Widget build(BuildContext context) {
    Jugador p1 = obtenerJugadorPorId('Jugador 1');
    Jugador p2 = obtenerJugadorPorId('Jugador 2');

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[200],
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Piedra, Papel o Tijeras",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildPlayerColumn(p1, idJugadaP1),
              _buildPlayerColumn(p2, idJugadaP2),
            ],
          ),
          Text(
            resultMessage,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: _jugar,
                child: const Text(
                  "Jugar",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayerColumn(Jugador jugador, String idJugadaActual) {
    Jugada jugadaActual = obtenerJugadaPorId(idJugadaActual);
    return Column(
      children: [
        Text(
          jugador.nombre,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 20),
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            color: jugador.colorFondo,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black87, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Image.asset(
              jugadaActual.imagenUrl,
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}