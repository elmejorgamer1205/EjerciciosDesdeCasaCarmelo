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
      trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Solar System", style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            _buildPlanetRow("Earth", "assets/images/png/earth.png"),
            const Divider(height: 1),
            _buildPlanetRow("Venus", "assets/images/png/venus.png"),
            const Divider(height: 1),
            _buildPlanetRow("Mercury", "assets/images/png/mercury.png"),
            const Divider(height: 1),
          ],
        ),
      ),
    );
  }
}
