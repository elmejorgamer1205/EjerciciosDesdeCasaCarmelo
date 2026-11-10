import 'package:flutter/material.dart';
class Jugada {
  final String id;
  final String nombre;
  final String imagenUrl;
  final String venceAId;

  const Jugada({
    required this.id,
    required this.nombre,
    required this.imagenUrl,
    required this.venceAId,
  });
}

class Jugador {
  final String id;
  final String nombre;
  final Color colorFondo; // Cambiar int por Color

  const Jugador({
    required this.id,
    required this.nombre,
    required this.colorFondo,
  });
}

final List<Jugada> mockJugadas = const [
  Jugada(
    id: "Jugada 1",
    nombre: "Piedra",
    imagenUrl: "assets/images/rock.png",
    venceAId: "Jugada 3",
  ),
  Jugada(
    id: "Jugada 2",
    nombre: "Papel",
    imagenUrl: "assets/images/paper.png",
    venceAId: "Jugada 1",
  ),
  Jugada(
    id: "Jugada 3",
    nombre: "Tijeras",
    imagenUrl: "assets/images/scissors.png",
    venceAId: "Jugada 2",
  ),
];

final List<Jugador> mockJugadores = const [
  Jugador(
    id: "Jugador 1",
    nombre: 'Jugador 1',
    colorFondo: Colors.lightGreen,
  ),
  Jugador(
    id: 'Jugador 2',
    nombre: 'Jugador 2',
    colorFondo: Colors.yellow,
  ),
];

Jugada obtenerJugadaPorId(String id) {
  return mockJugadas.firstWhere((j) => j.id == id);
}

Jugador obtenerJugadorPorId(String id) {
  return mockJugadores.firstWhere((p) => p.id == id);
}