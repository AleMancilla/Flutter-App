import 'package:app_flutter2/src/providers/menu_providers.dart';
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
    
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
      return ListView(
        children: _list(snapshot.data),
      );
    });
  }

  List<Widget> _list(List<dynamic> data) {
    
    final List<Widget> opciones = [];

    data.forEach((opt){

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.account_circle, color: Colors.blue,),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
        onTap: (){}, 
      );

      opciones..add(widgetTemp)
      ..add(Divider());
    });


    return opciones;

    }
    
}