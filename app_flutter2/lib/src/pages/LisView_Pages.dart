import 'package:flutter/material.dart';

class ListaPages extends StatefulWidget {
  ListaPages({Key key}) : super(key: key);

  @override
  _ListaPagesState createState() => _ListaPagesState();
}

class _ListaPagesState extends State<ListaPages> {

  List _images = new List();
  int _ultimodato = 0;

  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _recargar();

    

    _scrollController.addListener((){
      print("SCROLL");
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
    _recargar();
    }});

    
  }

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
      controller: _scrollController,
      itemCount: _images.length,
      itemBuilder: (BuildContext context, int index){
        final _img = _images[index];
        return FadeInImage(
          placeholder: AssetImage('recursos/jar_loading.gif'), 
          image: NetworkImage('https://i.picsum.photos/id/$_img/600/600.jpg'));
          
      }
      );
  }

  void _recargar(){
    for(int i = 1; i<=10 ; i++ ){
      _ultimodato++;
      _images.add(_ultimodato);
      print("_________________$_ultimodato");
    }
    setState(() {});
  }
}