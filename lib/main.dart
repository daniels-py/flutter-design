import 'package:flutter/material.dart';
// IMPORTANTE: Aquí conectamos los archivos
import 'home_screen.dart';
import 'home.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // Definimos el tema global para que combine con tu sistema
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.light, // Puedes cambiarlo a .dark si prefieres
      ),
      // Aquí llamamos a la pantalla que creamos en el otro archivo
      home: const LoginScreen(),
    );
  }
}