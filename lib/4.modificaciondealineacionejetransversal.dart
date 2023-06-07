/* Ejemplo: modificación de la alineación de ejes transversales
En el ejemplo siguiente se establece explícitamente su valor predeterminado, .crossAxisAlignmentCrossAxisAlignment.center

Para demostrar la alineación de ejes transversales, se establece en , y ahora contiene un widget Eso es más alto que los widgets.mainAxisAlignmentMainAxisAlignment.spaceAroundRowBiggerBlueBoxBlueBox

1. Haga clic en el botón Ejecutar.

2. Cambie a , y vuelva a ejecutar.CrossAxisAlignment.centerCrossAxisAlignment.start*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start, //aqui se cambia a .start
      children: [
        BlueBox(),
        BiggerBlueBox(),
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

class BiggerBlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {
  final VoidCallback onReturn;
  MyApp4({required this.onReturn});

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
            Text('ejemplo 4'),
            MyWidget4(),
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
