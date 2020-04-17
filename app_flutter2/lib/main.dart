import 'package:app_flutter2/src/pages/Alert.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:app_flutter2/src/rutas.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
      // ... app-specific localization delegate[s] here
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // espaniol
        // ... other locales the app supports
      ],
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