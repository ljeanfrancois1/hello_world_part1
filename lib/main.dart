import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      home: new HelloButton()
    )
  );
}

class HelloButton extends StatefulWidget{
  @override
  HelloButtonState createState() => new HelloButtonState();
}

class HelloButtonState extends State<HelloButton>{

  int count = 0;
  List<String> strings = ['Hello World', 'Hello World'];
  String displayedString = "";

  void onPressed(){
    setState(() {
      displayedString = strings[count];
      count = count < 1 ? count +1 : 0;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text('Hello World'), backgroundColor: Colors.deepOrange ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(displayedString, style: new TextStyle(fontSize: 30)),
              new RaisedButton(
              child: new Text('click me'),
              color: Colors.blue,
              onPressed: onPressed
              ),

    ]
          )
          )
    )
    );
  }
}