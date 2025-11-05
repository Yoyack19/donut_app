import 'package:donut_app/utils/pancakes_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(double) onAdd;
  PancakesTab({super.key, required this.onAdd});


final List listadedonas = [
  
  //sabordona, preciodona, colordona, imagename, proovedordonas
  ['Chocolate', '100', Colors.brown, "lib/ImagesPancake/chocolate.png", "Starbuks"],
  ['Platano', '89', Colors.purple, "lib/ImagesPancake/banana.png", "Starbuks"],
  ['vainilla', '120', Colors.pink, "lib/ImagesPancake/plane.png", "DonkeyDonuts"],
  ['Fresa', '100', Colors.red, "lib/ImagesPancake/strawberry.png", "Krispy Kreme"],
  ['Nutela', '100', Colors.brown, "lib/ImagesPancake/chocolate.png", "Starbuks"],
  ['Banana', '89', Colors.purple, "lib/ImagesPancake/banana.png", "Starbuks"],
  ['Canela', '120', Colors.pink, "lib/ImagesPancake/plane.png", "DonkeyDonuts"],
  ['Cereza', '100', Colors.red, "lib/ImagesPancake/strawberry.png", "Krispy Kreme"]

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
          return PancakeTile(
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