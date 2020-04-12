import 'package:app_flutter2/src/pages/Alert.dart';
import 'package:app_flutter2/src/pages/Avatar.dart';
import 'package:app_flutter2/src/pages/home_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Home_Page()
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/' : (BuildContext context)=> Home_Page(),
        'alert':(BuildContext context)=> AlertPage(),
        'avatar':(BuildContext context)=> AvatarPage(),
      },
    );
  }
} 