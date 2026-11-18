import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/about_screen.dart';
import '../screens/contact_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String about = '/about';
  static const String contact = '/contact';

  static Map<String, WidgetBuilder> get rutas {
    return {
      home: (context) => const HomeScreen(),
      about: (context) => const AboutScreen(),
      contact: (context) => const ContactScreen(),
    };
  }
}