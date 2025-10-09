import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //icono izquierda
        leading: Icon(
        Icons.menu,
        color: Colors.grey[800]
        ),
        //icono derech
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(
              Icons.person
            ),
          )
        ],
      ),
      body: const Column(
        children: [
          //Texto principal

          //Pestañas

          //contenido de pestañas

          //Carrito

        ],
      ),
    );
  }
}