import 'package:flutter/material.dart';


final _iconos = <String, IconData>{
"add_alert"       : Icons.add_alert,
'accessibility'   : Icons.accessibility,
'folder_open'     : Icons.folder_open,
'donut_large'     : Icons.donut_large,
'input_icon'     : Icons.input
};
Icon getIcon (String data){
  return Icon(_iconos[data], color: Colors.blue,) ;
}