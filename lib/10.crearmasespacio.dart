/*Ejemplo: Crear más espacio
En el ejemplo siguiente se separan los dos primeros widgets mediante un widget con un valor de 1.BlueBoxSpacerflex

1. Haga clic en el botón Ejecutar.

2. Añadir otro widget (también con un valor de 1) entre el segundo y tercer widget.SpacerflexBlueBox*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        const Spacer(flex: 1),
        BlueBox(),
        const Spacer(flex: 1), //agregar otro espacio
        BlueBox(),
      ],
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue, //color de los bloques
        border: Border.all(),
      ),
    );
  }
}

class MyApp10 extends StatelessWidget {
  final VoidCallback onReturn;
  MyApp10({required this.onReturn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('ejemplo 10'),
            MyWidget10(),
            ElevatedButton(
              onPressed: onReturn,
              child: Text('Return to MyApp'),
            ),
          ],
        ),
      ),
    );
  }
}
