import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import '../themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Portafolio'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.contact);
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppTheme.fondo,
              Color(0xFF1E293B),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppTheme.acento, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.acento.withOpacity(0.3),
                        blurRadius: 20,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 70,
                    backgroundColor: AppTheme.superficie,
                    backgroundImage: AssetImage('assets/images/foto_perfil.jpg'),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Hola, Soy',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppTheme.textoSecundario,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Eduardo Hernandez',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.textoPrincipal,
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  decoration: BoxDecoration(
                    color: AppTheme.superficie,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Estudiante de Ing. en Sistemas - UNIMAR',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppTheme.acento,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.about);
                  },
                  icon: const Icon(Icons.person),
                  label: const Text('Sobre mí', style: TextStyle(fontSize: 16)),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.contact);
                  },
                  icon: const Icon(Icons.mail_outline),
                  label: const Text('Contacto', style: TextStyle(fontSize: 16)),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppTheme.acento,
                    side: const BorderSide(color: AppTheme.acento, width: 1.5),
                    minimumSize: const Size(250, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.comments);
                  },
                  icon: const Icon(Icons.chat_bubble_outline),
                  label: const Text('Comentarios', style: TextStyle(fontSize: 16)),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppTheme.acento,
                    side: const BorderSide(color: AppTheme.acento, width: 1.5),
                    minimumSize: const Size(250, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.code, size: 16, color: AppTheme.textoSecundario),
                    const SizedBox(width: 8),
                    const Text(
                      'Hecho con Flutter por Eduardo Hernandez',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppTheme.textoSecundario,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
