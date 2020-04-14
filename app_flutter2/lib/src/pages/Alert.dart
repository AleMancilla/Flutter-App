import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("ALERT"),),
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.pop(context);}),
      body: Center(
        child: RaisedButton(
          onPressed: (){},
          child: Text("BOTON"),
          shape: StadiumBorder(),
          color: Colors.blueGrey,
          textColor: Colors.white,
          )
          ),
      );
  }
}