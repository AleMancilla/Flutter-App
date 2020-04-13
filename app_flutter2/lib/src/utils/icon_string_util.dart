import 'package:flutter/material.dart';


final _iconos = <String, IconData>{
"add_alert"       : Icons.add_alert,
'accessibility'   : Icons.accessibility,
'folder_open'     : Icons.folder_open
};
Icon getIcon (String data){
  return Icon(_iconos[data], color: Colors.blue,) ;
}