/* Ejemplo: modificación de la alineación del eje principal
En el ejemplo siguiente se establece explícitamente su valor predeterminado, .mainAxisAlignmentMainAxisAlignment.start

1. Haga clic en el botón Ejecutar.

2. Cambie a , y vuelva a ejecutar.MainAxisAlignment.startMainAxisAlignment.end*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment
          .end, //aqui se cambia a MainAxisAlignment.end o .start
      children: [
        BlueBox(),
        BlueBox(),
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

class MyApp3 extends StatelessWidget {
  final VoidCallback onReturn;
  MyApp3({required this.onReturn});

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
            Text('ejemplo 3'),
            MyWidget3(),
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
