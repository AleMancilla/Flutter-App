import 'package:flutter/material.dart';
class InputPages extends StatefulWidget {
  InputPages({Key key}) : super(key: key);

  @override
  _InputPagesState createState() => _InputPagesState();
}

class _InputPagesState extends State<InputPages> {

  String _texto ='' ;
  String _correo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Pages"),),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children: <Widget>[
        _inputfield(),
        Divider(height: 5,),
        _inputfieldCorreo(),
        Divider(height: 5,),
        _inputfieldPass(),
        Divider(height: 5,),
        _listaPersonas()
      ],),
    );
  }

  _inputfield() {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        suffixIcon: Icon(Icons.accessibility),
        hintText: 'Hola Mundo mundial del mundo',
        helperText: 'Datos',
        labelText: 'label',
        counterText: 'Longitud ${ _texto.length }',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        )
      ),
      onChanged: (variable){
        setState(() {
        _texto = variable;
        });
        print(_texto);
      },
    );
  }

  
  _inputfieldCorreo() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: Icon(Icons.alternate_email),
        suffixIcon: Icon(Icons.email),
        hintText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        )
      ),
      onChanged: (variable){
        setState(() {
        _correo = variable;
        });
        print(_texto);
      },
    );
  }
  _inputfieldPass() {
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        icon: Icon(Icons.security),
        suffixIcon: Icon(Icons.signal_cellular_no_sim),
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        )
      ),
    );
  }


  Widget _listaPersonas(){
    return ListTile(
      title: Text("dato $_texto"),
      subtitle: Text("Correo $_correo"),
    );
  }
}