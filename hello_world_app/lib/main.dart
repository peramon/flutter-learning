import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  // print('Hola Mundo');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quitar etiqueta de depuración
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.green),

      home: CounterScreen(),
    );
  }
}
