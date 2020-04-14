import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("CARD"),),
      body: ListView(children: <Widget>[
        _funcard(),
        SizedBox(height: 30,),
        _funcard2()],
        padding: EdgeInsets.all(10.0),),
    );
  }

  Widget _funcard() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(title: Text("Hola Mariiii"),subtitle: Text("Espero que estes entendiendo bien todo, :* pronto seremos expertos "),leading: Icon(Icons.image),),
          Row(children: <Widget>[FlatButton(onPressed: (){}, child: Text("Cancel")),FlatButton(onPressed: (){}, child: Text("ok"))],mainAxisAlignment: MainAxisAlignment.end,)
        ],
      )
    );
  }

  Widget _funcard2(){
    final card =  Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('recursos/jar_loading.gif'), 
            image: NetworkImage('https://img.vixdata.io/pd/jpg-large/es/sites/default/files/imj/p/paisajes-espectaculares-del-mundo-1.jpg'),
            fadeInDuration: Duration(milliseconds: 250),
            height: 200,
            fit: BoxFit.cover,
            ),
//          Image(image: NetworkImage('https://lh3.googleusercontent.com/2EgAE2kKK-LmXESP7ncwsZu_a47ujKNS8hmDkm1_9zwcW2tzAcnWcwNwwfHQ5o5yPhSjpcCuMR4kwbDrFjgP_O3vhLjszY9nsYGAVwEcIV_RgsDjKjz7wx39mg66nv1N7EU67gcVWFNcRNeV0y75_M8l_-jMgnqmJ_BMTs5H822PwJxxzl2pCrlPTcC4HmF9e2_wWYTvGqmyshbmATB2q1ZgafeIvTt-xodefOWCFvCLk5IuG3EMmcfYoU7uCE97P4Ikz7HlWynTHvidyTSmqn7C5F_E2-fqPGa3l7Ri5nJNFhih1m4JU_BYtLLg1l_ry71DpI9WI_JosRXMnYKeFYrWv_65fBv4ibzAK2UJhlebAgNkkmE8LJaO4g2Ti1mP0ZddMTFL1uUbsW42kPbyDrABeR1pRjf4ZwJxIGCesk0OghiLr6nHsAqivY7IJ5I2p8mfTbPUUvy02xsQH2K5cjfrSHXJPpQtAKKVmgc5g5YoZngf36MUaiRJVhNAcSoTVNoUNqH2s3Qni1pESWrt_XZbI69j3Lt8mR-emitoptU_V2IgFUrpJj-HNRgzvT4wgwRVLvnh3bwgwNn2zAyzODnxPZYyv3cNDZdNjtm4zxpR0i9lyxtBxFPI1_rQ_KiX76cIh7OsX9mBcoFNQI55sxCwmULrnoR7lvrFtD8XCdK4pmO3nFEAoPn_wLrN=w437-h328-no')),
          Container(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.favorite, color: Colors.redAccent,),
              Text("Imagen de nuestro viaje"),
              Icon(Icons.favorite, color: Colors.redAccent,)
            ],
          ), padding: EdgeInsets.all(10.0),)
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 10.0,
            color: Colors.black26,
            offset: Offset(2.0, 10.0),
            spreadRadius: 2.0
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }

}