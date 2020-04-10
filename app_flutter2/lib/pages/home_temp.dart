import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold( 
      appBar: AppBar(
        title: Text("PageTemp"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text("TITULO"),),
          Divider(),
          ListTile(title: Text("TITULO"),),
          Divider(),
          ListTile(title: Text("TITULO"),),
          Divider(),
          ListTile(title: Text("TITULO"),),
          Divider(),
          
        ],
      ),
    );
  }

}