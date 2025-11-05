import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String sabordona;
  final String preciodona;
  final dynamic colordona;
  final String imagename;
  final String proveedordonas;
  final Function(double) onAdd;
  const BurgerTile({super.key, required this.sabordona, required this.preciodona, required this.colordona, required this.imagename, required this.proveedordonas, required this.onAdd});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(color: colordona[50], borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: colordona[100],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24), topRight: Radius.circular(24))
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 18,
                  ),
                  child:  Text(
                    "\$$preciodona",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:  18,
                      color: colordona[800]
                    )
                  )
                )

            ],),
            //Imagen de la dona
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                    child: Image.asset(imagename),
                  ),
      
                //Nombre de l dona
                 Text (
                     sabordona,
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                     Text(proveedordonas, style: TextStyle(color: Colors.grey[600])),
                //Tienda de la dona
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Icon(Icons.favorite, color: Colors.pink[400]),
                        
                         TextButton(
                           onPressed: () {
                            final price = double.tryParse(preciodona) ?? 0;
                            onAdd(price);
                           },
                           child: Text('Add',
                             style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.underline
                             ),
                        
                           ),
                         )
                        
                      ],
                        
                  ),
                )
                 
      
                //botones
          ],
        ),
      ),
    );

  }
}