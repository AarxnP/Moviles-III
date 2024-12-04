import 'package:evaluacion_01/main.dart';
import 'package:evaluacion_01/screens/ejercicio1.dart';
import 'package:evaluacion_01/screens/ejercicio2.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text("Pantalla 1"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Ejercicio1()),
            ),
          ),
          ListTile(
            title: const Text("Pantalla 2"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Ejercicio2()),
            ),
          ),
        ],
      ),
    );
  }
}
