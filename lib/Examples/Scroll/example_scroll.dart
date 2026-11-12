import 'package:ejercicios_desde_casa_carmelo/Examples/Scroll/top_buttons.dart';
import 'package:flutter/material.dart';

class ExampleScroll extends StatefulWidget {
  const ExampleScroll({super.key});

  @override
  State<ExampleScroll> createState() => _ExampleScrollState();
}

class _ExampleScrollState extends State<ExampleScroll> {
  //1. Creamos variable de tipo controlador para delegar el desplazamiento.
  final ScrollController _scrollController = ScrollController();


  Color _colorFondo = Colors.blue;

  //2. En el método que se invoca al presentar la interfaz, añadimos escuchas para el controlador.
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_infoScroll);
  }

  // 4. Eliminamos el controller.
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopButtons(_moveUp, _moveDown, _scrollController.hasClients?_scrollController.offset.toString():"0.0"),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController, //3. Asignamos el controlador al widget
              child: Column(
                children: [
                  Container(color: Colors.green, height: 400,),
                  Container(color: _colorFondo, height: 1200,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }



  _moveUp(){
    _scrollController.jumpTo(_scrollController.offset - 100);
  }

  _moveDown(){
    _scrollController.jumpTo(_scrollController.offset + 100);
  }


  //Creamos método que se invocara cuando ocurra algún evento de scroll/desplazamiento
  void _infoScroll(){
    print("El valor del scroll en pixeles ${_scrollController.position.pixels}");
    print("El valor del offset es  ${_scrollController.offset}");

    setState(() {
      if(_scrollController.offset >= 800){
        _colorFondo = Colors.amber;
      }else{
        _colorFondo = Colors.blue;
      }
    });
  }
}




