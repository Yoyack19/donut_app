import 'package:flutter/material.dart';
import 'package:donut_app/utils/pizzza_tile.dart';
class PizzaTab extends StatelessWidget {
  PizzaTab({super.key});

final List listadedonas = [
  
  //sabordona, preciodona, colordona, imagename, proovedordonas
  ['Ajonjoli', '100', Colors.brown, "lib/ImagesPizza/ajonjoli.png", "Starbuks"],
  ['Extrapeperoni', '89', Colors.purple, "lib/ImagesPizza/extrapeperoni.png", "Starbuks"],
  ['Mixta', '120', Colors.pink, "lib/ImagesPizza/mixta.png", "DonkeyDonuts"],
  ['Peperoni', '100', Colors.red, "lib/ImagesPizza/peperoni.png", "Krispy Kreme"],
  ['Extra queso', '100', Colors.brown, "lib/ImagesPizza/quesoextra.png", "Starbuks"],
  ['Salchicha', '89', Colors.purple, "lib/ImagesPizza/salchicha.png", "Starbuks"],
  ['Tomatada', '120', Colors.pink, "lib/ImagesPizza/tomatada.png", "DonkeyDonuts"],
  ['Verduras', '100', Colors.red, "lib/ImagesPizza/verduras.png", "Krispy Kreme"]

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
          return PizzaTile(
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