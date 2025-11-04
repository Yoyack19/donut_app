import 'package:flutter/material.dart';
import 'package:donut_app/utils/smoothie_tile.dart';
class SmoothieTab extends StatelessWidget {
  SmoothieTab({super.key});

final List listadedonas = [
  
  //sabordona, preciodona, colordona, imagename, proovedordonas
  ['Arandano', '100', Colors.pink, "lib/ImagesSmoothies/Arandano.png", "Starbuks"],
  ['Brocoly', '89', Colors.green, "lib/ImagesSmoothies/Brocoly.png", "Starbuks"],
  ['Caramelo', '120', Colors.brown, "lib/ImagesSmoothies/Caramelo.png", "DonkeyDonuts"],
  ['Fresa', '100', Colors.red, "lib/ImagesSmoothies/Chamoy.png", "Krispy Kreme"],
  ['Canela', '100', Colors.pink, "lib/ImagesSmoothies/Fresa.png", "Starbuks"],
  ['Arandano', '89', Colors.red, "lib/ImagesSmoothies/Sandia.png", "Starbuks"],
  ['Ceresa', '120', Colors.greenAccent, "lib/ImagesSmoothies/Chaya.png", "DonkeyDonuts"],
  ['Chicle', '100', Colors.purple, "lib/ImagesSmoothies/Uva.png", "Krispy Kreme"]

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
          return SmoothieTile(
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