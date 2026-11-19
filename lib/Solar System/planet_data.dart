import 'package:ejercicios_desde_casa_carmelo/Solar%20System/Planet.dart';

class PlanetsData {
  static List<Planet> getPlanets(){
    return const [
      Planet(name: "Mercury", distance: "57.9 Millones Km", image: "assets/images/png/mercury.png"),
      Planet(name: "Venus", distance: "108.2 Millones km", image: "assets/images/png/venus.png"),
      Planet(name: "Earth", distance: "108.2 Millones km", image: "assets/images/png/earth.png"),
      Planet(name: "Mars", distance: "108.2 Millones km", image: "assets/images/png/mars.png"),
      Planet(name: "Jupiter", distance: "108.2 Millones km", image: "assets/images/png/jupiter.png"),
      Planet(name: "Saturn", distance: "108.2 Millones km", image: "assets/images/png/saturn.png"),
      Planet(name: "Uranus", distance: "108.2 Millones km", image: "assets/images/png/uranus.png"),
      Planet(name: "Neptune", distance: "108.2 Millones km", image: "assets/images/png/neptune.png"),
    ];
  }
}
