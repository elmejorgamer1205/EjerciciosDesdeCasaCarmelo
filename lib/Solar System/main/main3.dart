import 'package:flutter/material.dart';
import '../model/RouteGenerator.dart';

void main() => runApp(const SolarSystemApp());

class SolarSystemApp extends StatelessWidget {
  const SolarSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: RouteGenerator.homeRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}