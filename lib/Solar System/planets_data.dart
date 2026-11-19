import 'Planet.dart';

class PlanetsData {
  static List<Planet> getPlanets() {
    return const [
      Planet(
        name: 'Mercury',
        distance: '57.9 Millones Km',
        image: 'assets/images/png/mercury.png',
        description:
        'Mercury—the smallest planet in our solar system and closest to the Sun—is only slightly '
            'larger than Earth\'s Moon. Mercury is the fastest planet, zipping around the Sun every 88 Earth days.',
      ),
      Planet(
        name: 'Venus',
        distance: '108.2 Millones Km',
        image: 'assets/images/png/venus.png',
        description:
        'Venus spins slowly in the opposite direction from most planets. A thick atmosphere traps '
            'heat in a runaway greenhouse effect, making it the hottest planet in our solar system.',
      ),
      Planet(
        name: 'Earth',
        distance: '149.5 Millones Km',
        image: 'assets/images/png/earth.png',
        description:
        'Earth—our home planet—is the only place we know of so far that’s inhabited by living things. '
            'It\'s also the only planet in our solar system with liquid water on the surface.',
      ),
      Planet(
        name: 'Mars',
        distance: '227.9 Millones Km',
        image: 'assets/images/png/mars.png',
        description:
        'Mars is a dusty, cold, desert world with a very thin atmosphere. There is strong evidence '
            'Mars was—billions of years ago—wetter and warmer, with a thicker atmosphere.',
      ),
      Planet(
        name: 'Jupiter',
        distance: '778.5 Millones Km',
        image: 'assets/images/png/jupiter.png',
        description:
        'Jupiter is more than twice as massive than the other planets of our solar system combined. '
            'The giant planet\'s Great Red Spot is a centuries-old storm bigger than Earth.',
      ),
      Planet(
        name: 'Saturn',
        distance: '1,434 Millones Km',
        image: 'assets/images/png/saturn.png',
        description:
        'Adorned with a dazzling, complex system of icy rings, Saturn is unique in our solar system. '
            'The other giant planets have rings, but none are as spectacular as Saturn\'s.',
      ),
      Planet(
        name: 'Uranus',
        distance: '2,871 Millones Km',
        image: 'assets/images/png/uranus.png',
        description:
        'Uranus—seventh planet from the Sun—rotates at a nearly 90-degree angle from the plane of its orbit. '
            'This unique tilt makes Uranus appear to spin on its side.',
      ),
      Planet(
        name: 'Neptune',
        distance: '4,495 Millones Km',
        image: 'assets/images/png/neptune.png',
        description:
        'Neptune—the eighth and most distant major planet orbiting our Sun—is dark, cold and whipped '
            'by supersonic winds. It was the first planet located through mathematical calculations.',
      ),
    ];
  }
}