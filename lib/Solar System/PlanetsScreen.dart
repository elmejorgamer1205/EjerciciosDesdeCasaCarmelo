import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const SolarSystemApp());
}

class SolarSystemApp extends StatelessWidget{
  const SolarSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: PlanetsScreen(),
    );
  }
}

class PlanetsScreen extends StatelessWidget{
  const PlanetsScreen({super.key});

  Widget _buildPlanetRow(String name, String image){
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            Image.asset(image, width: 52, height: 52),
            const SizedBox(width: 24),
            Text(name, style: TextStyle(fontSize: 16, color: Colors.black),)
          ],
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: ListView(
        children: [
          _buildPlanetRow("Earth", "assets/images/png/earth.png"),
          _buildPlanetRow("Venus", "assets/images/png/venus.png"),
          _buildPlanetRow("Mercury", "assets/images/png/mercury.png")
        ],
      )),
    );
  }
}