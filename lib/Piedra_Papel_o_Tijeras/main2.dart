import 'package:flutter/material.dart';
import 'GameScreen.dart';

void main() {
  runApp(const PiedraPapelTijerasApp());
}

class PiedraPapelTijerasApp extends StatelessWidget {
  const PiedraPapelTijerasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Piedra, Papel o Tijeras',
      home: GameScreen(),
    );
  }
}