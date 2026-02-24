import 'package:flutter/material.dart';

// --- 3. PANTALLA DE INICIO ---
class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.lime),
        title: const Text('Inicio'),
        actions: const [Icon(Icons.notifications_none), SizedBox(width: 15)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hola, Luis Cazares del 6i',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Bienvenido de nuevo',
              style: TextStyle(color: Colors.white54),
            ),
            const SizedBox(height: 25),
            const Text(
              'Tu Plan de Hoy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),

            // Fila de Comidas (Scroll Horizontal)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _tarjetaComida(
                    'Desayuno',
                    '350 cal.',
                    'Smoothie Bowl',
                    Colors.pinkAccent,
                  ),
                  _tarjetaComida(
                    'Almuerzo',
                    '600 cal.',
                    'Pollo a la Parrilla',
                    Colors.orange,
                  ),
                  _tarjetaComida(
                    'Cena',
                    '400 cal.',
                    'Ensalada Quinoa',
                    Colors.green,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),
            _botonOpcion(Icons.bar_chart, 'Progreso Semanal'),
            _botonOpcion(Icons.restaurant_menu, 'Recetas Saludables'),
          ],
        ),
      ),
    );
  }

  Widget _tarjetaComida(String tiempo, String cal, String desc, Color color) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const SizedBox(height: 10),
          Text(tiempo, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(
            cal,
            style: const TextStyle(color: Color(0xFFC0FF00), fontSize: 12),
          ),
          Text(
            desc,
            style: const TextStyle(fontSize: 10, color: Colors.white54),
          ),
        ],
      ),
    );
  }

  Widget _botonOpcion(IconData icono, String titulo) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(icono, color: Colors.white),
          const SizedBox(width: 15),
          Text(titulo, style: const TextStyle(fontWeight: FontWeight.w500)),
          const Spacer(),
          const Icon(Icons.chevron_right, color: Colors.white54),
        ],
      ),
    );
  }
}
