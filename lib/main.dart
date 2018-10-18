import 'package:flutter/material.dart';
import './screens/home.dart';
import './ui/home2.dart';

void main(){
  runApp(new MaterialApp(
    title: "Simple Layouts",
    //home: new Home2(),
    home: HelloYou(),
  ));
}

/**First Part
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

*/

class HelloYou extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_HelloYouState();

}
///_ is used to declarate a private class
class _HelloYouState extends State<HelloYou>{
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Helo"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(15.5),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Please insert your name"
              ),
              onChanged: (String string){
                setState(() {
                  name = string;
                });
              },
            ),
            Text("Hello "+ name + "!"),
          ],
        ),
      ),
    );
  }

}