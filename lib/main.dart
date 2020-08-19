import 'package:flutter/material.dart';

import 'package:disenos/src/routes/routes.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light );
    
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,

      title: 'Designs',

      routes: getRoutes(),

      theme: ThemeData(fontFamily: 'Poppins'),

      initialRoute: '/',



    );
  }
}