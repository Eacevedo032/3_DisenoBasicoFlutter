/* Ejemplo: mostrar una imagen
En el ejemplo siguiente se muestra una imagen que almacenado de forma remota en GitHub. El método toma una cadena parámetro que contiene la dirección URL de una imagen.Image.network

En este ejemplo, contiene una dirección URL que no funciona.Image.network

1. Haga clic en el botón Ejecutar.

2. Cambie la URL que no funciona a la URL real:

https://raw.githubusercontent.com/flutter/website/main/examples/layout/sizing/images/pic1.jpg

3. A continuación, cambie a o , y correr de nuevo.pic1.jpgpic2.jpgpic3.jpg*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //en el siguiente se cambia la imagen, puede ser pic1, pic2 o pic3, estos .jpg
        Image.network(
            'https://raw.githubusercontent.com/flutter/website/main/examples/layout/sizing/images/pic2.jpg'),
      ],
    );
  }
}

class MyApp13 extends StatelessWidget {
  final VoidCallback onReturn;
  MyApp13({required this.onReturn});

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
            Text('ejemplo 13'),
            MyWidget13(),
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
