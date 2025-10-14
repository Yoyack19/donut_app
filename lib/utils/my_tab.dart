import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String tabName;

  const MyTab({
    super.key,
    required this.iconPath,
    required this.tabName,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80, // Altura suficiente para icono + texto
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icono con borde redondeado
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(16), // Border radius de 16
            ),
            child: Padding(
              padding: const EdgeInsets.all(8), // Espacio interno
              child: Image.asset(
                iconPath,
                width: 24, // Reducido por el borde
                height: 24,
                color: Colors.grey[700],
              ),
            ),
          ),
          const SizedBox(height: 8), // Espacio entre icono y texto
          // Texto
          Text(
            tabName,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}
