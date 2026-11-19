import 'package:ejercicios_desde_casa_carmelo/Solar%20System/Planet.dart';
import 'package:ejercicios_desde_casa_carmelo/Solar%20System/planet_data.dart';
import 'package:flutter/material.dart';
import 'PlanetDetailScreen.dart';

class PlanetsScreen extends StatelessWidget {
  const PlanetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Planet> planets = PlanetsData.getPlanets();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Solar System',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: ListView.separated(
        itemCount: planets.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final planet = planets[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            leading: Image.asset(
              planet.image,
              width: 52,
              height: 52,
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                planet.name,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 4.0),
              child: Text(
                planet.distance,
                style: TextStyle(fontSize: 13, color: Colors.grey[600]),
              ),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlanetDetailsScreen(planet: planet,),
                ),
              );
            },
          );
        },
      ),
    );
  }
}