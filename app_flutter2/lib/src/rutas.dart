import 'package:app_flutter2/src/pages/Alert.dart';
import 'package:app_flutter2/src/pages/AnimatedContainerPage.dart';
import 'package:app_flutter2/src/pages/Avatar.dart';
import 'package:app_flutter2/src/pages/Cards.dart';
import 'package:app_flutter2/src/pages/home_page.dart';
import 'package:flutter/material.dart';


Map<String, WidgetBuilder> returnRouts(){
  return <String, WidgetBuilder>{
        '/' : (BuildContext context)=> Home_Page(),
        'alert':(BuildContext context)=> AlertPage(),
        'avatar':(BuildContext context)=> AvatarPage(),
        'card':(BuildContext context)=> CardPage(),
        'animateContainer':(BuildContext context)=> AnimatedContainerPage(),
      };
  }

