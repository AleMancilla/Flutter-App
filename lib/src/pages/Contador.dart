import 'package:flutter/material.dart';



class ContadorDinamico extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ActualizarEstado();
  }

}

class _ActualizarEstado extends State<ContadorDinamico> {
int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "Statefulwidget",
              style: TextStyle(
                  color: Colors.redAccent, backgroundColor: Colors.blueAccent),
            ),
            centerTitle: true,
            backgroundColor: Colors.orange),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hola mundo",
                style: TextStyle(fontSize: 30),
              ),
              Text("$_conteo", style: TextStyle(fontSize: 30)),
              Icon(Icons.favorite, size: 80,color: Colors.redAccent,)
            ],
          ),
        ),
        floatingActionButton: _floatinButtons(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
        );
  }


  Widget _floatinButtons(){
          
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(onPressed: _cero , child: Icon(Icons.exposure_zero),),
        Expanded(child: SizedBox(width: 0,)),
        FloatingActionButton(onPressed: _restar , child: Icon(Icons.remove),),
        SizedBox(width: 15,),
        FloatingActionButton(onPressed: _aumentar, child: Icon(Icons.add),),
        SizedBox(width: 5,),
        
      ],
    );
    
    
  }

  void _aumentar() => setState(() { _conteo++;   }); 
  void _restar() => setState(() { _conteo--;   }); 
  void _cero() => setState(() { _conteo=0;   }); 
}