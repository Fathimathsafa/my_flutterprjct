import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidgetsEx1 extends StatelessWidget {
  final ImageProvider Myimage;
  final String name;
  final String price;
  VoidCallback?   onclick;           // to get tap
  Color? bgColor;
   ProductWidgetsEx1(
       {super.key,
         required this.Myimage,
         required this.name,
         required this.price,
         this.onclick,
       this.bgColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(             // to get tap we want to wrap the card with ink well
      child: Card (
        color: bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: Myimage,
            width: 150,
              height: 150,
            ),
            Text(name,style: GoogleFonts.habibi(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
            Text(price,style: GoogleFonts.habibi(color:Colors. white),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton.icon
                    
                    (
                    style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: (){},
                    label: Text("WhishList",style: TextStyle(color: Colors.white),),
                    icon: Icon(
                      Icons.favorite_border),),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: ElevatedButton.icon

                    (
                    style:ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: (){},
                    label: Text("Add to Cart",style: TextStyle(color: Colors.white),),
                    icon: Icon(
                      Icons.shopping_cart,color: Colors.white,),),
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
