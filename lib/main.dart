import 'package:flutter/material.dart';
import 'package:myapp/widgets/pantalla1.dart';
import 'package:myapp/widgets/pantalla2.dart';
import 'package:myapp/widgets/pantalla3.dart';

void main() {
  runApp(const EasyDietApp());
}

class EasyDietApp extends StatelessWidget {
  const EasyDietApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EasyDiet',
      // Definimos el estilo oscuro global inspirado en la imagen
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: const Color(0xFFC0FF00), // Verde lima
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
          centerTitle: true,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaBienvenida(),
        '/registro': (context) => const PantallaRegistro(),
        '/inicio': (context) => const PantallaInicio(),
      },
    );
  }
}