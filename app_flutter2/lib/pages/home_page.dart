import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar( title: Text("Mi Tituki"),),
      body: _home(),
    );
  }

  Widget _home() {
    return  ListView(
        children: _list(),
      );
  }

  List<Widget> _list() {
    return  [
      ListTile(title: Text("Hola"),),
      Divider(),
      ListTile(title: Text("Hola"),),
      Divider(),
      ListTile(title: Text("Hola"),),
      Divider(),
    ];
    }
    
}