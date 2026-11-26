import 'package:flutter/material.dart';
import '../model/Planet.dart';


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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              planet.image,
              width: 180,
              height: 180,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 24),
            Text(
              planet.name,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              planet.distance,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 16),
            Text(
              planet.description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}