import 'package:flutter/material.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container (
      alignment: Alignment.center ,
      color: Colors.amberAccent,
      //width: 200.0,
      //height: 200.0,
      child: Column(
        children: <Widget>[
          Row(
        children: <Widget>[
          Text("MY LIST",textDirection: TextDirection.ltr,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 40.0,
        ),
      ),
      Expanded(child: Text("don't forget anything just add here we are here for you",textDirection: TextDirection.ltr,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 20.0,
        ),
      )
      ,)
      ],
      ),
      AddHere()
        ],
      )
    )
);
  }
}
class AddHere extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.blue,
        child: Text("add here"),
        elevation: 6.0,
        onPressed: (){
addlist(context);
        },
      ),
    );
  }

}

void addlist(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("content is added"),
    content:Text("list is updated"),
  );
  showDialog(
    context: context,
    builder: (BuildContext context){
      return alertDialog;
    }
    );
  }
