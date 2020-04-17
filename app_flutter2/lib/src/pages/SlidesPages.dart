import 'package:flutter/material.dart';

class SlidesPage extends StatefulWidget {
  SlidesPage({Key key}) : super(key: key);

  @override
  _SlidesPageState createState() => _SlidesPageState();
}

class _SlidesPageState extends State<SlidesPage> {

  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title: Text("SlidesPages"),),
         body: Center(
           child: _slider(),
         ),
       ),
    );
  }

  _slider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamanio de la imagen',
      divisions: 10,
      value: _valorSlider, 
      min: 10.0,
      max: 400.0,
      onChanged: (valor){
        _valorSlider = valor;
        setState(() {
          
        });
    });
  }
}