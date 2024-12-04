import 'package:evaluacion_01/navegadores/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Pantalla1());
}

class Pantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EVALUACION 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' EVALUACION 1 '),
      ),
      drawer: MyDrawer(), // Usa el Drawer modularizado
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdO54qqKtn4g5PKyAXlL6Qj_OhFNttUN-4ig&s', // Cambia esta URL por la imagen que prefieras.
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Fondo con opacidad detrás del nombre
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: Colors.black.withOpacity(0.6), // Fondo oscuro con opacidad
                  child: Text(
                    'Nombre: AARXN',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.8),
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: Colors.black.withOpacity(0.6),
                  child: Text(
                    'GitHub: AARXNP',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.8),
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PruebaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba'),
      ),
      body: Center(
        child: Text(
          'Pantalla de Prueba',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ejercicio1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio01'),
      ),
      body: Center(
        child: Text(
          'Pantalla de Ejercicio01',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ejercicio2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio02'),
      ),
      body: Center(
        child: Text(
          'Pantalla de Ejercicio02',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
