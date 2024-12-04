import 'package:flutter/material.dart';

class Ejercicio2 extends StatefulWidget {
  const Ejercicio2({super.key});

  @override
  _Ejercicio2State createState() => _Ejercicio2State();
}

class _Ejercicio2State extends State<Ejercicio2> {
  final _controller = TextEditingController();
  double? _theta;

  void _calcularDistancia() {
    final w = double.tryParse(_controller.text);
    if (w != null) {
      final t = 25.0;
      setState(() {
        _theta = w * t;
      });
      _mostrarAlerta('La distancia recorrida (θ) es: $_theta radianes');
    } else {
      setState(() {
        _theta = null;
      });
      _mostrarAlerta(
          'Por favor, ingrese un valor válido para la velocidad angular.');
    }
  }

  void _mostrarAlerta(String mensaje) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Resultado', style: TextStyle(color: Colors.deepOrange)),
          content: Text(mensaje, style: const TextStyle(fontSize: 16)),
          actions: [
            TextButton(
              // style: TextButton.styleFrom(primary: Colors.blue),
              child: const Text('Aceptar', style: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicio 2", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.indigo, width: 2),
                ),
                child: const Text(
                  "Calculadora de Distancia Recorrida en un Carrusel",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: '(rad/s)',
                  labelStyle: TextStyle(color: Colors.indigo),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo, width: 2),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // primary: Colors.indigo, // Color del botón
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                onPressed: _calcularDistancia,
                child: const Text('Calcular Distancia'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
