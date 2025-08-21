import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  // StatelessWidget - No tiene estado mutable, StatefulWidget - Estado mutable

  // int clickCounter = 0;

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState(); // Crea el estado mutable de la pantalla del contador
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0; // Contador de clics

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text( clickCounter != 1  ? 'Clicks':'Click', style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // setState notifica a Flutter que el estado ha cambiado y necesita reconstruir el widget
            clickCounter++; // Incrementa el contador de clics
          });
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
