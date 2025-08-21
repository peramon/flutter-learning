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
          const SizedBox(height: 10), // Espacio entre los botones
          CustomButton(icon: Icons.refresh_outlined),
          const SizedBox(height: 10), // Espacio entre los botones
          CustomButton(icon: Icons.plus_one_outlined),
          const SizedBox(height: 10), // Espacio entre los botones
          CustomButton(icon: Icons.exposure_minus_1),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;

  const CustomButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      onPressed: () {
        // if (clickCounter == 0) {
        //   return; // Evita que el contador sea negativo
        // }
        // clickCounter--;
        // setState(() {
        //   // setState notifica a Flutter que el estado ha cambiado y necesita reconstruir el widget
        // });
      },
      child: Icon(icon),
    );
  }
}
