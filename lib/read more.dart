import 'package:flutter/material.dart';
import 'package:rich_readmore/rich_readmore.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: ReadMoreEx(),));
}
class ReadMoreEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read more less"),
        elevation: 6,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children:[
          RichReadMoreText.fromString(
        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        textStyle: TextStyle(color: Colors.purpleAccent),
        settings: LengthModeSettings(
          trimLength: 010,
          trimCollapsedText: 'Readmore',
          trimExpandedText: 'Readless ',
          onPressReadMore: () {
            /// specific method to be called on press to show more
          },
          onPressReadLess: () {
            /// specific method to be called on press to show less
          },
          lessStyle: TextStyle(color: Colors.blue), // we can change colours ,style ,font,size , weight
          moreStyle: TextStyle(color: Colors.blue),
        ),
      ),
          Divider(thickness: 5,),    // to divide two things
          RichReadMoreText.fromString(     // we can add
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            textStyle: TextStyle(color: Colors.purpleAccent),
            settings: LengthModeSettings(
              trimLength: 010,
              trimCollapsedText: 'Readmore',
              trimExpandedText: 'Readless ',
              onPressReadMore: () {
                /// specific method to be called on press to show more
              },
              onPressReadLess: () {
                /// specific method to be called on press to show less
              },
              lessStyle: TextStyle(color: Colors.blue), // we can change colours ,style ,font,size , weight
              moreStyle: TextStyle(color: Colors.blue),
            ),
          ),
      ]
      ),

    );
  }
}

