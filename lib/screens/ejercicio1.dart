import 'package:flutter/material.dart';

class Ejercicio1 extends StatefulWidget {
  const Ejercicio1({super.key});

  @override
  _Ejercicio1State createState() => _Ejercicio1State();
}

class _Ejercicio1State extends State<Ejercicio1> {
  final TextEditingController _initialHeightController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  void _calculateHeight() {
    final double initialHeight = double.tryParse(_initialHeightController.text) ?? 0.0;
    final double time = double.tryParse(_timeController.text) ?? 0.0;
    const double acceleration = 20.0; // a = 20 m/s^2

    // Fórmula: h = hi + (1/2) * a * t^2
    final double height = initialHeight + 0.5 * acceleration * time * time;
    String resultMessage;

    if (height < 1000) {
      resultMessage = 'Lanzamiento fallido. Altura alcanzada: ${height.toStringAsFixed(2)} m';
    } else {
      resultMessage = 'Lanzamiento exitoso. Altura alcanzada: ${height.toStringAsFixed(2)} m';
    }

    _showResultDialog(resultMessage);
  }

  void _showResultDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Resultado', style: TextStyle(color: Colors.deepOrange)),
          content: Text(message, style: const TextStyle(fontSize: 16)),
          actions: <Widget>[
            TextButton(
              // style: TextButton.styleFrom(primary: Colors.blue),
              child: const Text('Cerrar', style: TextStyle(fontSize: 18)),
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicio 1", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.teal, width: 2),
                ),
                child: TextField(
                  controller: _initialHeightController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: '(H) en metros',
                    labelStyle: TextStyle(color: Colors.teal),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.teal, width: 2),
                ),
                child: TextField(
                  controller: _timeController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: '(T) en segundos',
                    labelStyle: TextStyle(color: Colors.teal),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // primary: Colors.teal, // Color del botón
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                onPressed: _calculateHeight,
                child: const Text('Calcular Altura'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
