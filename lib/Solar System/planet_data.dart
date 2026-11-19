import 'package:ejercicios_desde_casa_carmelo/Solar%20System/planet.dart';

class PlanetData {
  static List<Planet> getPlanets(){
    return const [
      Planet(name: "Mercury", distance: "57.9 Millones Km", image: "assets/images/png/mercury.png"),
      Planet(name: "Venus", distance: "108.2 Millones km", image: "assets/images/png/venus.png"),
      Planet(name: "Earth", distance: "108.2 Millones km", image: "assets/images/png/earth.png"),
    ];
  }
}
