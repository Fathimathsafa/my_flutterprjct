import 'package:flutter/material.dart';
import 'package:my_flutterprjct/refracting%20widget/widgets/Mywidgets1.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: HomeProductWidget(
  ),));
}

class HomeProductWidget extends StatelessWidget {
  const HomeProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RefractingWidget"
        ),
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
          itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),

          itemBuilder: (context, index)=>ProductWidgetsEx1(
            bgColor: Colors.black,
            onclick: (){},
            Myimage: AssetImage("assets/images/fruit remove.png"),
            name: 'Puppy',
            price: '\$200000',

          )),
    );
  }
}
