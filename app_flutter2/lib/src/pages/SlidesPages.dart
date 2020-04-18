import 'package:flutter/material.dart';

class SlidesPage extends StatefulWidget {
  SlidesPage({Key key}) : super(key: key);

  @override
  _SlidesPageState createState() => _SlidesPageState();
}

class _SlidesPageState extends State<SlidesPage> {

  double _valorSlider = 100.0;

  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title: Text("SlidesPages"),),
         body: Center(
           child: Column(
             children: <Widget>[
               Divider(height: 55.0,),
               _slider(),
               _crearCheckbox(),
               _imagen(),
             ],
           ),

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
      max: 300.0,
      onChanged: (_check) ? null : 
      (valor){
        _valorSlider = valor;
        setState(() {
        });
    });
  }

  _imagen() {
    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/e0/71/a1/e071a187cf230952663472a7179a97bb.jpg'),
      fit: BoxFit.contain,
      width: _valorSlider,
      );

  }

  _crearCheckbox() {
    return CheckboxListTile(
      title: Text("Bloquear slider"),
      value: _check, 
      onChanged: (valor){
      setState(() {
      _check = valor;
      });
    });
  }


}