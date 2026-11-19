import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../themes/app_theme.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  Future<void> _abrirEnlace(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('No se pudo abrir $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundColor: AppTheme.superficie,
              child: Icon(
                Icons.code,
                size: 50,
                color: AppTheme.acento,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Eduardo Hernandez',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppTheme.textoPrincipal,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Desarrollador Flutter',
              style: TextStyle(
                fontSize: 14,
                color: AppTheme.textoSecundario,
              ),
            ),
            const SizedBox(height: 30),
            const Divider(color: AppTheme.superficie),
            const SizedBox(height: 20),
            _botonContacto(
              Icons.email_outlined,
              'eduardoahs2007@gmail.com',
              'mailto:eduardoahs2007@gmail.com',
            ),
            const SizedBox(height: 12),
            _botonContacto(
              Icons.phone_outlined,
              '+58 412 094 5568',
              'tel:+584120945568',
            ),
            const SizedBox(height: 12),
            _botonContacto(
              Icons.link,
              'github.com/Eduardoahs',
              'https://github.com/Eduardoahs',
            ),
            const SizedBox(height: 30),
            const Text(
              'Hecho con Flutter',
              style: TextStyle(
                fontSize: 12,
                color: AppTheme.textoSecundario,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _botonContacto(IconData icono, String texto, String url) {
    return InkWell(
      onTap: () => _abrirEnlace(url),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: AppTheme.superficie,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icono, color: AppTheme.acento, size: 22),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                texto,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppTheme.textoPrincipal,
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 12,
              color: AppTheme.textoSecundario,
            ),
          ],
        ),
      ),
    );
  }
}