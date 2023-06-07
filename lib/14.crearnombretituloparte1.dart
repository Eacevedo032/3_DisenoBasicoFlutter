/*Ejercicio: Crear el nombre y el título
Implemente un que contenga dos widgets de texto:Column

El primer widget tiene el nombre y La propiedad establecida en .TextFlutter McFlutterstyleTheme.of(context).textTheme.headlineSmall

El segundo widget contiene el título .TextExperienced App Developer

Para el , Establecer en y en .ColumnmainAxisSizeMainAxisSize.mincrossAxisAlignmentCrossAxisAlignment.start*/
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Flutter McFlutter',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Text('Experienced App Developer'),
      ],
    );
  }
}

class MyApp14 extends StatelessWidget {
  final VoidCallback onReturn;
  MyApp14({required this.onReturn});

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
            Text('ejemplo 14'),
            MyWidget14(),
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
