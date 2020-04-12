import 'package:app_flutter2/src/providers/menu_providers.dart';
import 'package:app_flutter2/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

import 'Alert.dart';

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
        children: _list(snapshot.data, context),
      );
    });
  }

  List<Widget> _list(List<dynamic> data, BuildContext context) {
    
    final List<Widget> opciones = [];

    data.forEach((opt){

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
        onTap: (){
          //final route =   MaterialPageRoute(builder: (context)=> AlertPage());
          //Navigator.push(context, route);

          Navigator.pushNamed(context, opt['ruta']);
        }, 
      );

      opciones..add(widgetTemp)
      ..add(Divider());
    });


    return opciones;

    }
    
}