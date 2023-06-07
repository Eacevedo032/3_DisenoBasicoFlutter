/*Ejemplo: Cambio de las propiedades de ajuste
En el ejemplo siguiente se muestra la propiedad, que puede tener uno de dos valores:fit

FlexFit.loose
Se utiliza el tamaño preferido del widget. (Valor predeterminado)
FlexFit.tight
Fuerza al widget a llenar todo su espacio extra.
En este ejemplo, cambie las propiedades a Haz que los widgets ocupen el espacio extra.fitFlexible

1. Haga clic en el botón Ejecutar.

2. Cambie ambos valores a , y correr de nuevo.fitFlexFit.tight
*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        Flexible(
          //se cambia ambos FlexFit
          fit: FlexFit.tight,
          flex: 1,
          child: BlueBox(),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: BlueBox(),
        ),
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

class MyApp5 extends StatelessWidget {
  final VoidCallback onReturn;
  MyApp5({required this.onReturn});

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
            Text('ejemplo 5'),
            MyWidget5(),
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
