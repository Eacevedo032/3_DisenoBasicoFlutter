/* Ejemplo: Crear un icono
En el ejemplo siguiente se muestra el widget de la biblioteca de iconos de material en rojo y azul.Icons.widget

1. Haga clic en el botón Ejecutar.

2. Agregue otro de la biblioteca de iconos de material con un tamaño de 50.Icon

3. Dale un color de la paleta Color del material y vuelve a ejecutarlo.IconColors.amber*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: const [
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.blue,
        ),
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.red,
        ),
        Icon(
          Icons.favorite, //muestra un corazon
          size: 50,
          color: Colors.pink, //color del ejemplo
        ),
      ],
    );
  }
}

class MyApp12 extends StatelessWidget {
  final VoidCallback onReturn;
  MyApp12({required this.onReturn});

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
            Text('ejemplo 12'),
            MyWidget12(),
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
