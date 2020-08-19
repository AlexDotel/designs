import 'package:flutter/material.dart';

import 'package:disenos/src/pages/avanzado.dart';
import 'package:disenos/src/pages/clima.dart';
import 'package:disenos/src/pages/homepage.dart';

getRoutes(){

  return <String, WidgetBuilder>{

    '/'         : (BuildContext context) => HomePage(),
    'clima'     : (BuildContext context) => Clima(),
    'avanzado'  : (BuildContext context) => Avanzado(),

  };

}