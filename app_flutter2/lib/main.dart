import 'package:app_flutter2/src/pages/Alert.dart';
import 'package:app_flutter2/src/pages/Avatar.dart';
import 'package:app_flutter2/src/pages/home_page.dart';
import 'package:app_flutter2/src/rutas.dart';
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
      routes: returnRouts(),
      onGenerateRoute: (RouteSettings setting){
        print("Ruta ${setting.name}");

        return  MaterialPageRoute(builder: (context)=> AlertPage());
      },
    );
  }
} 