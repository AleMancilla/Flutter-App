import 'package:flutter/material.dart';

class home extends StatelessWidget {

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "hola",
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
              Text("$conteo", style: TextStyle(fontSize: 30)),
              Icon(Icons.favorite, size: 80,color: Colors.redAccent,)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
              print("Hola Mundo");
            }, 
          child: Icon(Icons.add),
          ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
        );
  }


  fun(){
    print("Hola Mundo");
  }
}
