import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comentarios'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _comentario(
            'Guillermo Zabala',
            'buen portafolio, se nota el esfuerzo.',
            Icons.person,
          ),
          _comentario(
            'Lucia Caminos',
            'Me gustó mucho el diseño oscuro, muy limpio.',
            Icons.person,
          ),
          _comentario(
            'Katiuska',
            '👍',
            Icons.school,
          ),
          const SizedBox(height: 20),
          const Text(
            'Deja tu comentario (próximamente)',
            style: TextStyle(
              fontSize: 14,
              color: AppTheme.textoSecundario,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _comentario(String nombre, String texto, IconData icono) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppTheme.superficie,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: AppTheme.fondo,
            child: Icon(icono, color: AppTheme.acento, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nombre,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.textoPrincipal,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  texto,
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppTheme.textoSecundario,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}