import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("ALERT"),),
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.pop(context);}),
    );
  }
}