import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("ALERT"),),
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.pop(context);}),
      body: Center(
        child: RaisedButton(
          onPressed: () => _mostraralert(context),
          child: Text("BOTON"),
          shape: StadiumBorder(),
          color: Colors.blueGrey,
          textColor: Colors.white,
          )
          ),
      );
  }

  void _mostraralert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          title: Text("Titulo"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Contenido"),
              FlutterLogo(size: 100,),
            ],
          ),
          actions: <Widget>[
            FlatButton(onPressed: () => Navigator.of(context).pop(), child: Text("Cancel")),
            FlatButton(onPressed: ()=>Navigator.of(context).pop(), child: Text("ok")),
          ],

        );
      }
      );
  }


}