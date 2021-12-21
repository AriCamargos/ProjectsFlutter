import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //O que meu widget terá
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(30);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange[300],
          centerTitle: true,
          title: const Text('Container Animado Demo'),
        ),
        body: Center(
          child: AnimatedContainer(
            //Classe de animação.
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
            //Botão para a alteração do meu widget
            backgroundColor: Colors.orange[500],
            child: const Icon(Icons.play_arrow_rounded),
            onPressed: () {
              setState(() {
                final random = Random();
                _width = random.nextInt(300).toDouble();
                _height = random.nextInt(300).toDouble();
                _color = Color.fromRGBO(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                  1,
                );
                _borderRadius =
                    BorderRadius.circular(random.nextInt(100).toDouble());
              });
            }),
      ),
    );
  }
}
