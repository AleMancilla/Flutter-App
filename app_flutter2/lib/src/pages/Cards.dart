import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("CARD"),),
      body: ListView(children: <Widget>[_funcard()],),
    );
  }

  Widget _funcard() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(title: Text("Titulo basico"),subtitle: Text("Subtitulo asdasdasdasda "),leading: Icon(Icons.image),),
          Row(children: <Widget>[FlatButton(onPressed: (){}, child: Text("Cancel")),FlatButton(onPressed: (){}, child: Text("ok"))],mainAxisAlignment: MainAxisAlignment.end,)
        ],
      )
    );
  }

}