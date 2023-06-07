/*Parte 2
Ejercicio: Ajustar el diseño
Ajuste el en un que tenga una propiedad establecida en y una propiedad establecida en . El contiene los siguientes widgets:RowColumnmainAxisSizeMainAxisSize.mincrossAxisAlignmentCrossAxisAlignment.stretchColumn

Un widget con una altura de 8.SizedBox

Un vacío donde agregará la información de contacto en un paso posterior.Row

Un segundo widget con una altura de 16.SizedBox

Un segundo vacío donde agregarás cuatro iconos (Parte 3).Row

La lista de widgets de debe tener el siguiente formato: Por lo tanto, la información de contacto y los iconos se muestran debajo del Nombre y título:Column

content_copy

     ],
    ), // <--- Closing parenthesis for the Row
    SizedBox(),
    Row(), // First empty Row
    SizedBox(),
    Row(), // Second empty Row
   ],
  ); // <--- Closing parenthesis for the Column that wraps the Row
*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.account_circle, size: 50),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Flutter McFlutter',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Text('Experienced App Developer'),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(),
        const SizedBox(height: 16),
        Row(),
      ],
    );
  }
}

class MyApp16 extends StatelessWidget {
  final VoidCallback onReturn;
  MyApp16({required this.onReturn});

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
            Text('ejemplo 16'),
            MyWidget16(),
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
