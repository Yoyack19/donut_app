import 'package:donut_app/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  BurgerTab({super.key});

final List listadedonas = [
  
  //sabordona, preciodona, colordona, imagename, proovedordonas
  ['Doble', '100', Colors.brown, "lib/ImagesBurger/doble.png", "Starbuks"],
  ['Huevo', '89', Colors.yellow, "lib/ImagesBurger/egg.png", "Starbuks"],
  ['Serie Black', '120', Colors.red, "lib/ImagesBurger/nigga.png", "DonkeyDonuts"],
  ['Pitaya', '100', Colors.red, "lib/ImagesBurger/pitahaya.png", "Krispy Kreme"],
  ['Regular', '100', Colors.brown, "lib/ImagesBurger/single.png", "Starbuks"],
  ['Ultimate', '89', Colors.brown, "lib/ImagesBurger/ultimate.png", "Starbuks"],
  ['Arrachera', '120', Colors.red, "lib/ImagesBurger/doble.png", "DonkeyDonuts"],
  ['Pollo', '100', Colors.yellow, "lib/ImagesBurger/single.png", "Krispy Kreme"]

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

          );
        }
      );
  }
}