import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color fondo = Color(0xFF0D1117);
  static const Color superficie = Color(0xFF161B22);
  static const Color acento = Color(0xFF58A6FF);
  static const Color textoPrincipal = Color(0xFFF0F6FC);
  static const Color textoSecundario = Color(0xFF8B949E);

  static ThemeData get temaOscuro {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: fondo,
      primaryColor: acento,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        backgroundColor: superficie,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(
          color: textoPrincipal,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: const IconThemeData(color: acento),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: acento,
          foregroundColor: fondo,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
      ),
    );
  }
}