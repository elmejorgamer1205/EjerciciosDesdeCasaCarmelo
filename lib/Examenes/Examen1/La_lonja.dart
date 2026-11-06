import 'package:ejercicios_desde_casa_carmelo/Examenes/Examen1/mock_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LaLonja());
}

class LaLonja extends StatefulWidget {
  const LaLonja({super.key});

  @override
  State<LaLonja> createState() => _LaLonjaState();
}

class _LaLonjaState extends State<LaLonja> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("LA LONJA", style: TextStyle(color: Colors.white),),
          actions: [
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.face_retouching_off),
            ),
          ],
        ),
      ),
    );
  }
}
