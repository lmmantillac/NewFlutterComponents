import 'package:flutter/material.dart';

class Home2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(15.0),
          color: Colors.deepOrangeAccent,
          //margin: EdgeInsets.only(left: 30.0,bottom: 50.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: Text("Pizza",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 35.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Charmonman',
                        fontWeight: FontWeight.bold
                    ),
                  )),
                  Expanded(child: Text("Tomato, Mozzarella, Basil",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 35.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Charmonman',
                        fontWeight: FontWeight.bold
                    ),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: Text("Marina",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 35.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Charmonman',
                        fontWeight: FontWeight.bold
                    ),
                  )),
                  Expanded(child: Text("Tomato, Basil",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 35.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Charmonman',
                        fontWeight: FontWeight.bold
                    ),
                  )),
                ],
              ),
              PizzaImageWidget(),
              OrderButton(),
            ],
          )
          /*width: 197.0,
          height: 190.2,*/
        )
    );
  }
}

class PizzaImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage pizzaAsset = AssetImage('images/pizza.png');
    Image image = Image(image: pizzaAsset, width: 200.0, height: 200.0,);
    return Container(child: image,);
  }
}

class OrderButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var button = Container(
      margin: EdgeInsets.only(top: 20.0),
      child: RaisedButton(
        child: Text("Order your Pizza!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: (){
          order(context);
        },
      ),
    );

    return button;
  }

  void order(BuildContext context){
    var alert = AlertDialog(
      title: Text("Order Complete"),
      content: Text("Thanks for your order"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context){///Builder es un controlador de funcion
         return alert;
      }
    );
  }

}