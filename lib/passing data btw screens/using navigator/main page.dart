import 'dart:js';

import 'package:flutter/material.dart';

import 'details page.dart';
import 'dummy data.dart';

void main() {
  runApp(MaterialApp(
    home: Product_Main(),
    routes: {
      "detailPage":(context)=>DetailsPage(),
    },
  ));
}

class Product_Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Shop Me"),
          titleTextStyle: TextStyle(color: Colors.yellow,fontSize: 25),
          backgroundColor: Colors.black,
        ),
        body: GridView.count(
          crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10,
          children: products.map((product) => InkWell(
            onTap: (){
              Navigator.pushNamed(context, "detailPage",arguments: product['id']);
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight:  Radius.circular(30),),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(product['image']))),
                    ),
                  ),
                  Text(
                    product['name'],
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${product['price']}',
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ))
              .toList(),
        ));
  }
}