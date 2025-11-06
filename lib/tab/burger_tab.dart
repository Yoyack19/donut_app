import 'package:donut_app/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(double) onAdd;
  BurgerTab({super.key, required this.onAdd});

final List listadedonas = [
  
  //sabordona, preciodona, colordona, imagename, proovedordonas
  ['Thor', '100', Colors.brown, "lib/ImagesBurger/gato.png", "Petco"],
  ['Kiity', '89', Colors.yellow, "lib/ImagesBurger/gato.png", "Patitas felices"],
  ['Atena', '120', Colors.red, "lib/ImagesBurger/gato.png", "Petco"],
  ['Tita', '100', Colors.red, "lib/ImagesBurger/gato.png", "Animal save"],
  ['Chew', '100', Colors.brown, "lib/ImagesBurger/gato.png", "Gatilocos"],
  ['Pancho', '89', Colors.brown, "lib/ImagesBurger/gato.png", "Gatilocos"],
  ['Bandido', '120', Colors.red, "lib/ImagesBurger/gato.png", "Animal save"],
  ['Tigre', '100', Colors.yellow, "lib/ImagesBurger/gato.png", "Patitas felices"]

];


  @override
  Widget build(BuildContext context) {
     return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //NUmero de columnas
        crossAxisCount: 2,

        childAspectRatio: 1 / 1.45,
        ),
        //cuantos elmentos tendra
        itemCount: listadedonas.length,
        //Lo que se va acontruir 
        itemBuilder: (context, index){
          return BurgerTile(
            sabordona: listadedonas[index][0],
            preciodona: listadedonas[index][1],
            colordona: listadedonas[index][2],
            imagename: listadedonas[index][3],
            proveedordonas: listadedonas[index][4],
            onAdd: onAdd,

          );
        }
      );
  }
}