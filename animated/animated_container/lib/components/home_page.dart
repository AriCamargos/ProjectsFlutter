/* import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  //Construtor
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final double _width = 50;
  final double _height = 50;
  final Color _color = Colors.green;
  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Container Animado Demo'),
        ),
        body: Center(
          child: AnimatedContainer(
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
            child: const Icon(Icons.play_arrow),
            onPressed: () {
              setState(() {
                final random = Random();
                // ignore: unused_local_variable
                double _width = random.nextInt(300).toDouble();
                // ignore: unused_local_variable
                double _height = random.nextInt(300).toDouble(),
                    // ignore: unused_local_variable
                    /*  _color = Color.fromRGBO(random.nextInt(256),
                        random.nextInt(256), random.nextInt(256), 1) as double ; */
                    // ignore: unused_local_variable
                    _borderRadius =
                        BorderRadius.circular(random.nextInt(100).toDouble());
              });
            }),
      ),
    );
  }
} */

