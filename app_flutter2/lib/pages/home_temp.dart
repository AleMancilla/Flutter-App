import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget{

  final datos = ["uno","dos","trs","cuatro"];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("PageTemp"),
      ),
      body: ListView(
        children: _crear(),
      ),
    );
  }

  List<Widget> _crear(){

    List<Widget> lst = new List<Widget>();

    for (var item in datos) {

      final tempWidget = ListTile(title: Text(item));

      lst..add(tempWidget)
        ..add(Divider());
    }

    return lst;
  } 

}