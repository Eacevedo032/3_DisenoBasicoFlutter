/*Ejemplo: Prueba de valores flexibles
En el ejemplo siguiente, contiene un widget y dos widgets que envuelven dos widgets. Los widgets contener propiedades con valores establecidos en 1 (el valor predeterminado).RowBlueBoxFlexibleBlueBoxFlexibleflexflex

Cuando las propiedades se comparan entre sí, La relación entre sus valores determina qué fracción del espacio restante total recibe cada widget.flexflexFlexible

content_copy
  remainingSpace * (flex / totalOfAllFlexValues)
En este ejemplo, la suma de los valores (2), determina que ambos widgets reciben la mitad del espacio total restante. El widget (o widget de tamaño fijo) sigue siendo del mismo tamaño.flexFlexibleBlueBox*/
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        Flexible(
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

class MyApp6 extends StatelessWidget {
  final VoidCallback onReturn;
  MyApp6({required this.onReturn});

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
            Text('ejemplo 6'),
            MyWidget6(),
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
