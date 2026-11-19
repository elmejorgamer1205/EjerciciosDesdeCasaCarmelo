import 'package:flutter/material.dart';
import 'PlanetDetailScreen.dart';
import 'PlanetsScreen.dart';
import 'Planet.dart';


class RouteGenerator {
  static const String homeRoute = '/';
  static const String detailsRoute = '/details';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const PlantesScreen(),
        );

      case detailsRoute:
        if (args is Planet) {
          return MaterialPageRoute(
            builder: (_) => PlanetDetailsScreen(planet: args),
          );
        }
        return _errorRoute('Error: se esperaba un objeto Planet.');

      default:
        return _errorRoute('Ruta no encontrada: ${settings.name}');
    }
  }

  static Route<dynamic> _errorRoute(String message) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.grey[700],
        ),
        body: Center(
          child: Text(message, style: const TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}