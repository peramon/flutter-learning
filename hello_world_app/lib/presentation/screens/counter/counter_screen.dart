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
      appBar: AppBar(
        title: const Text('Counter Screen'),
        // leading:
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              clickCounter != 1 ? 'Clicks' : 'Click',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              setState(() {
                // setState notifica a Flutter que el estado ha cambiado y necesita reconstruir el widget
                clickCounter++; // Incrementa el contador de clics
              });
            },
            child: Icon(Icons.refresh_outlined),
          ),
          const SizedBox(height: 10), // Espacio entre los botones
          FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              setState(() {
                // setState notifica a Flutter que el estado ha cambiado y necesita reconstruir el widget
                clickCounter++; // Incrementa el contador de clics
              });
            },
            child: Icon(Icons.plus_one),
          ),
          const SizedBox(height: 10), // Espacio entre los botones
          FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              setState(() {
                // setState notifica a Flutter que el estado ha cambiado y necesita reconstruir el widget
                clickCounter--; // Incrementa el contador de clics
              });
            },
            child: Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }
}
