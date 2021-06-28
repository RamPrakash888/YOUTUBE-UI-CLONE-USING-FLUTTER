

import 'package:firstproject/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    //final devoreo=MediaQuery.of(context).orientation;// just gets the orientation of the mobile phone
   // if(devoreo==Orientation.portrait) {
      //have two functions that returns widgets one for landscape and another for portrait in else if
   // }
    return MaterialApp(
    title: "homepage",
    home: mainp() , //the class name of another dart file , gets imported(homepage.dart)
    );
  }
}
