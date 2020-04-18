import 'package:flutter/material.dart';

class ListaPages extends StatefulWidget {
  ListaPages({Key key}) : super(key: key);

  @override
  _ListaPagesState createState() => _ListaPagesState();
}

class _ListaPagesState extends State<ListaPages> {

  List _images = [13,22,34,45,56,67,73,86,9];
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title: Text("Listaaas"),),
         body: _crearlista(),
       ),
    );
  }

  _crearlista() {
    return ListView.builder(
      itemCount: _images.length,
      itemBuilder: (BuildContext context, int index){
        final _img = _images[index];
        return FadeInImage(
          placeholder: AssetImage('recursos/jar_loading.gif'), 
          image: NetworkImage('https://i.picsum.photos/id/$_img/600/600.jpg'));
          
      }
      );
  }
}