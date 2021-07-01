import 'dart:html';

import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    home: HomePage()
  ));
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
  
}


class _HomePageState extends State<HomePage> {
  var count = 0;


  void increment() {
    count++;
    setState(() {});
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: Center(child: Text(
          "Counter\n$count", 
          textAlign: TextAlign.center,)),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            increment();
          },
        )
    );
  }

}