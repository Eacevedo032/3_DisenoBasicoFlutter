/*Ejercicio: Envolver la columna en una fila
Envuelva el implementó en un que contenga los siguientes widgets:ColumnRow

Un widget establecido en y con un tamaño de 50 píxeles.IconIcons.account_circle

Un widget que crea un espacio de 8 píxeles alrededor del widget.PaddingIcon

Para ello, puede especificar para la propiedad.const EdgeInsets.all(8.0)padding

El debería verse así:Row 
Row(
       children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.account_circle, size: 50),
        ),
        Column( ... ), // <--- The Column you first implemented
      ],
     );*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.account_circle, size: 50),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flutter McFlutter',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Text('Experienced App Developer'),
          ],
        ),
      ],
    );
  }
}

class MyApp15 extends StatelessWidget {
  final VoidCallback onReturn;
  MyApp15({required this.onReturn});

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
            Text('ejemplo 15'),
            MyWidget15(),
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
