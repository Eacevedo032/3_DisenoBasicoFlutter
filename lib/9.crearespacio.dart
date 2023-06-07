/*Ejemplo: Creación de espacio
El ejemplo siguiente contiene tres widgets y un widget que separa el primero y segundos widgets. El widget Contiene una propiedad igual a 50 píxeles lógicos.BlueBoxSizedBoxBlueBoxSizedBoxwidth

1. Haga clic en el botón Ejecutar.

2. Cree más espacio agregando otro widget (25 píxeles lógicos de ancho) entre el segundo y tercer widget, y correr de nuevo.SizedBoxBlueBox*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        const SizedBox(width: 50),
        BlueBox(), //cajas azules
        const SizedBox(width: 25), //se agrega un SizedBox y ancho 25
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
        color: Colors.blue, //se cambia el color de los bloques
        border: Border.all(),
      ),
    );
  }
}

class MyApp9 extends StatelessWidget {
  final VoidCallback onReturn;
  MyApp9({required this.onReturn});

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
            Text('ejemplo 9'),
            MyWidget9(),
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
