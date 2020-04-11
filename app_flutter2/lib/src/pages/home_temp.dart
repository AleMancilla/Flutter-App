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
        children: _crearmap(),
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

  List<Widget> _crearmap(){
    return datos.map((String i){
      return Column(
        children: <Widget>[
          ListTile(title: Text(i),subtitle: Text("Subtitulo"),leading: Icon(Icons.accessibility_new),trailing: Icon(Icons.arrow_forward_ios),onTap: null,),
          Divider(),
        ],
      );
    }).toList();
  }

}