import 'package:flutter/material.dart';
import 'package:donut_app/screens/home_page.dart';

class LoginController {
  // 🔹 Validación de campos vacíos
  static String? validateField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo es obligatorio';
    }
    return null;
  }

  // 🔹 Lógica de inicio de sesión (básica)
  static void login(BuildContext context, String username, String password) {
    // Solo valida que haya texto
    if (username.isNotEmpty && password.isNotEmpty) {
      // Redirige a HomePage
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const HomePage()),
      );
    } else {
      // Muestra mensaje de error
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, llena todos los campos')),
      );
    }
  }
}
