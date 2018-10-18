import 'package:flutter/material.dart';
import './screens/home.dart';

void main(){
  runApp(new HelloFlutterApp());
}

//sub class
class HelloFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: "Flutter Aplication",
      home: Scaffold(//permite crear un widGet AppBar
          appBar: AppBar(
              title: Text("Title in App Bar")
          ),
          body: Home()
      ),
    );
  }
}

//widgets are objects, and objects are instances of clases

