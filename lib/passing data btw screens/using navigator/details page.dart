import 'package:flutter/material.dart';

import 'dummy data.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //to read value from previous page
    final productId = ModalRoute.of(context)?.settings.arguments;

    ///fetch that single map (or product) corresponding to the above id
    final product =
    products.firstWhere((element) => element['id'] == productId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Product Details",
          style: TextStyle(fontSize: 25, color: Colors.yellow),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(product['image']))),
            ),
          ),
          Text(
            product['name'],
            style: const TextStyle(
                fontSize: 25, color: Colors.brown, fontWeight: FontWeight.bold),
          ),
          Text(
            product['description'],
            style: const TextStyle(
                fontSize: 20, color: Colors.brown,fontStyle: FontStyle.italic),
          ),
          Text(
            '\$ ${product['price']}',
            style: const TextStyle(
                fontSize: 18, color: Colors.brown, fontWeight: FontWeight.bold),
          ),
          Text(
            '${product['rating']}',
            style: const TextStyle(
                fontSize: 15, color: Colors.brown, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

}