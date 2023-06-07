/*Ejemplo: Rellenar espacio adicional
En el ejemplo siguiente se muestra cómo el widget fuerza su widget secundario a Llena espacio extra.Expanded

1. Haga clic en el botón Ejecutar.

2. Envuelva el segundo widget en un widget.BlueBoxExpanded

Por ejemplo:

content_copy
  Expanded(child: BlueBox(),),
3. Seleccione el botón Formato para formatear correctamente el código, y correr de nuevo.*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        BlueBox(),
        SizedBox(
          width: 100,
          height: 100, //agregamos un height 100
          child: BlueBox(),
        ),
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
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class MyApp8 extends StatelessWidget {
  final VoidCallback onReturn;
  MyApp8({required this.onReturn});

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
            Text('ejemplo 8'),
            MyWidget8(),
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
