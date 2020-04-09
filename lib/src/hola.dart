

import 'package:app_flutter/src/pages/Contador.dart';
import 'package:app_flutter/src/pages/home.dart';
import 'package:flutter/material.dart';

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContadorDinamico(),
      //home()
    );
  }

}