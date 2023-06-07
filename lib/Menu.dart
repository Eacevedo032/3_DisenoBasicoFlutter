import 'package:flutter/material.dart';
import '1.Crearunacolumna.dart';
import '2.modificaciondeltamanodeeje.dart';
import '3.modificaciondealineacionejeprincipal.dart';
import '4.modificaciondealineacionejetransversal.dart';
import '5.cambiarlaspropiedadesdeajuste.dart';
import '6.pruebadevaloresflexibles.dart';
import '7.llenarespacioextra.dart';
import '8.cambiareltamanodewidget.dart';
import '9.crearespacio.dart';
import '10.crearmasespacio.dart';
import '11.alineartexto.dart';
import '12.creaciondeunicono.dart';
import '13.mostrarimagenes.dart';
import '14.crearnombretituloparte1.dart';
import '15.envolvercolumnaenfilaparte1.dart';
import '16.ajustardiseñoparte2.dart';
import '17.introducirinformacioncontactoparte2.dart';
import '18.anadircuatroiconosparte3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switch Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Menu'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Option 1'),
            onTap: () {
              handleMenuOption(context, 1);
            },
          ),
          ListTile(
            title: Text('Option 2'),
            onTap: () {
              handleMenuOption(context, 2);
            },
          ),
          ListTile(
            title: Text('Option 3'),
            onTap: () {
              handleMenuOption(context, 3);
            },
          ),
          ListTile(
            title: Text('Option 4'),
            onTap: () {
              handleMenuOption(context, 4);
            },
          ),
          ListTile(
            title: Text('Option 5'),
            onTap: () {
              handleMenuOption(context, 5);
            },
          ),
          ListTile(
            title: Text('Option 6'),
            onTap: () {
              handleMenuOption(context, 6);
            },
          ),
          ListTile(
            title: Text('Option 7'),
            onTap: () {
              handleMenuOption(context, 7);
            },
          ),
          ListTile(
            title: Text('Option 8'),
            onTap: () {
              handleMenuOption(context, 8);
            },
          ),
          ListTile(
            title: Text('Option 9'),
            onTap: () {
              handleMenuOption(context, 9);
            },
          ),
          ListTile(
            title: Text('Option 10'),
            onTap: () {
              handleMenuOption(context, 10);
            },
          ),
          ListTile(
            title: Text('Option 11'),
            onTap: () {
              handleMenuOption(context, 11);
            },
          ),
          ListTile(
            title: Text('Option 12'),
            onTap: () {
              handleMenuOption(context, 12);
            },
          ),
          ListTile(
            title: Text('Option 13'),
            onTap: () {
              handleMenuOption(context, 13);
            },
          ),
          ListTile(
            title: Text('Option 14'),
            onTap: () {
              handleMenuOption(context, 14);
            },
          ),
          ListTile(
            title: Text('Option 15'),
            onTap: () {
              handleMenuOption(context, 15);
            },
          ),
          ListTile(
            title: Text('Option 16'),
            onTap: () {
              handleMenuOption(context, 16);
            },
          ),
          ListTile(
            title: Text('Option 17'),
            onTap: () {
              handleMenuOption(context, 17);
            },
          ),
          ListTile(
            title: Text('Option 18'),
            onTap: () {
              handleMenuOption(context, 18);
            },
          )
        ],
      ),
    );
  }

  void handleMenuOption(BuildContext context, int number) {
    switch (number) {
      case 1:
        print("Example 1 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp1(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 2:
        print("Example 2 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp2(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 3:
        print("Example 3 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp3(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 4:
        print("Example 4 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp4(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 5:
        print("Example 5 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp5(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 6:
        print("Example 6 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp6(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 7:
        print("Example 7 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp7(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 8:
        print("Example 8 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp8(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 9:
        print("Example 9 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp9(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 10:
        print("Example 10 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp10(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 11:
        print("Example 11 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp11(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 12:
        print("Example 12 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp12(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 13:
        print("Example 13 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp13(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 14:
        print("Example 14 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp14(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 15:
        print("Example 15 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp15(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 16:
        print("Example 16 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp16(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 17:
        print("Example 17 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp17(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      case 18:
        print("Example 18 selected");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp18(onReturn: () {
              Navigator.pop(context);
            }),
          ),
        );
        break;
      default:
        print("Exiting menu");
        // Handle the exit action or any default case logic here
        break;
    }
  }
}
