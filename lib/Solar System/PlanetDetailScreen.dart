import 'package:flutter/material.dart';
import 'Planet.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final Planet planet;

  const PlanetDetailsScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Planet Details',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset(
          planet.image,
          width: double.infinity,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}