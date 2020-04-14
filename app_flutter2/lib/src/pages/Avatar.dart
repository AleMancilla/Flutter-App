import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("AVATAR"),
      actions: <Widget>[
        Container(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://dam.menshealthlatam.com/wp-content/uploads/2018/11/STANLEE.jpg'),
            //radius: 20.0,
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            child: Text("SL"),
            backgroundColor: Colors.brown,
            //radius: 20.0,
          ),
        )
      ],),
      body: Center(
        child: FadeInImage(placeholder: AssetImage('recursos/jar_loading.gif'), image: NetworkImage('https://ae01.alicdn.com/kf/ULB8dt1dtf2JXKJkSanrq6y3lVXay.jpg_q50.jpg')),
      ),
    );
  }
}