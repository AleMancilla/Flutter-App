import 'package:flutter/material.dart';

class ListaPages extends StatefulWidget {
  ListaPages({Key key}) : super(key: key);

  @override
  _ListaPagesState createState() => _ListaPagesState();
}

class _ListaPagesState extends State<ListaPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title: Text("Listaaas"),),
       ),
    );
  }
}