import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sobre mí')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('¿Quién soy?', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppTheme.acento)),
            const SizedBox(height: 12),
            const Text('Soy Eduardo Hernandez, estudiante de Ingeniería en Sistemas en la Universidad de Margarita. Me gusta aprender cosas nuevas y resolver problemas con código.', style: TextStyle(fontSize: 15, height: 1.5, color: AppTheme.textoSecundario)),
            const SizedBox(height: 28),
            const Text('¿Qué hago?', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppTheme.acento)),
            const SizedBox(height: 12),
            const Text('Soy estudiante de Ingeniería en Sistemas. Me dedico a practicar con proyectos personales y me interesa el desarrollo web y móvil.', style: TextStyle(fontSize: 15, height: 1.5, color: AppTheme.textoSecundario)),
            const SizedBox(height: 28),
            const Text('Hobbies', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppTheme.acento)),
            const SizedBox(height: 12),
            Row(
              children: [
                _chipHobby(Icons.sports_esports, 'Videojuegos'),
                const SizedBox(width: 10),
                _chipHobby(Icons.music_note, 'Música'),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                _chipHobby(Icons.movie, 'Películas'),
                const SizedBox(width: 10),
                _chipHobby(Icons.code, 'Programar'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _chipHobby(IconData icono, String texto) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(color: AppTheme.superficie, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icono, size: 16, color: AppTheme.acento),
          const SizedBox(width: 6),
          Text(texto, style: const TextStyle(fontSize: 13, color: AppTheme.textoPrincipal)),
        ],
      ),
    );
  }
}