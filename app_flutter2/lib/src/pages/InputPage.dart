import 'package:flutter/material.dart';
class InputPages extends StatefulWidget {
  InputPages({Key key}) : super(key: key);

  @override
  _InputPagesState createState() => _InputPagesState();
}

class _InputPagesState extends State<InputPages> {

  String _texto ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Pages"),),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children: <Widget>[
        _inputfield(),
      ],),
    );
  }

  _inputfield() {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.ac_unit),
        prefixIcon: Icon(Icons.access_alarm),
        suffixIcon: Icon(Icons.accessibility),
        hintText: 'Hola Mundo mundial del mundo',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        )
      ),
      onChanged: (variable){
        _texto = variable;
        print(_texto);
      },
    );
  }
}