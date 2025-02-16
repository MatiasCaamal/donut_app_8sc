import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String imageName;

  //Valor fijo del borde circula
  final double borderRadius = 24;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutPrice,
      this.donutColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50],
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            //Precio
            Row(
              //Alinea el texto a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius))),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: donutColor[800]),
                  ),
                )
              ],
            ),

            //Imagen del producto
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Image.asset(imageName),
            ),

            //TAREA: TEXTO DEL SABOR DEL PRODUCTO
            Padding(padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              donutFlavor, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
            ),),

            //TAREA: ICONOS DEL "ME ENCANTA"
            Padding(padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    print("Presionado");
                  },
                  child: Icon(Icons.favorite, size: 20,),
                ),
                GestureDetector(
                  onTap: () {
                    print("Presionado");
                  },
                  child: Text("AGREGAR", style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black
                  ),),
                )
              ],
            ),)


            //Texto del sabor del producto

            //Íconos de "me encanta" y "agregar"
          ],
        ),
      ),
    );
  }
}
