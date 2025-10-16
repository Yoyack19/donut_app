import 'package:donut_app/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
   DonutTab({super.key});
//Lista de donas

final List listadedonas = [
  
  //sabordona, preciodona, colordona, imagename, proovedordonas
  ['Chocolate', '100', Colors.brown, "lib/images/chocolate_donut.png", "Starbuks"],
  ['Chocolate', '89', Colors.purple, "lib/images/grape_donut.png", "Starbuks"],
  ['Chocolate', '120', Colors.pink, "lib/images/icecream_donut.png", "DonkeyDonuts"],
  ['Chocolate', '100', Colors.red, "lib/images/strawberry_donut.png", "Krispy Kreme"]




];


  @override
  Widget build(BuildContext context) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //NUmero de columnas
        crossAxisCount: 2,

        childAspectRatio: 1 / 1.4,
        ),
        //cuantos elmentos tendra
        itemCount: listadedonas.length,
        //Lo que se va acontruir 
        itemBuilder: (context, index){
          return DonutTile(
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