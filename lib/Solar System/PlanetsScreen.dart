import 'package:ejercicios_desde_casa_carmelo/Solar%20System/planet.dart';
import 'package:ejercicios_desde_casa_carmelo/Solar%20System/planet_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SolarSystemApp());
}

class SolarSystemApp extends StatelessWidget {
  const SolarSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: PlanetsScreen(),
    );
  }
}

class PlanetsScreen extends StatelessWidget {
  const PlanetsScreen({super.key});

  Widget _buildPlanetRow(String name, String image) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      leading: Image.asset(image, width: 52, height: 52),
      title: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Text(name, style: TextStyle(fontSize: 16, color: Colors.black)),
      ),
      trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Planet> planets = PlanetData.getPlanets();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Solar System",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: ListView.separated(
        itemCount: planets.length,
        separatorBuilder: (context, index) => const Divider(height: 0),
        itemBuilder: (context, index) {
          final planet = planets[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            leading: Image.asset(planet.image, width: 52, height: 52),
            title: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                planet.name,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 8, top: 4),
              child: Text(
                planet.distance,
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey,
            ),
          );
        },
      ),
    );
  }
}
