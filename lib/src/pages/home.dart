import 'package:flutter/material.dart';

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build 
    return Scaffold(
      appBar: AppBar(
        title: Text("hola", style: TextStyle(color: Colors.redAccent, backgroundColor: Colors.blueAccent),),
        centerTitle: true,
        backgroundColor: Colors.orange
        ),
        body: FloatingActionButton(onPressed: (){})
    );
  }

}