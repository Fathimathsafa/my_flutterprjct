import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home:CarouseEx() ,));
}
class CarouseEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousal slider"),
      ),
      body: CarouselSlider(items: List.generate(6, (index) => Container(//
      color: Colors.primaries[index % Colors.primaries.length],)),
        options: CarouselOptions(
    // decoration: BoxDecoration(
    // image: DecorationImage(
    // image: AssetImage(img[index]),
    // fit: BoxFit.fill

        viewportFraction: 1,
        initialPage: 1,
    autoPlayInterval: Duration(seconds: 2),
    enableInfiniteScroll: true,
    autoPlay: true,
    pauseAutoPlayOnTouch: true)),
    );
  }
}
