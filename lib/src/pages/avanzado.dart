import 'package:flutter/material.dart';

import 'dart:ui';
import 'dart:math';

class Avanzado extends StatelessWidget {

  var esTitle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  var esSubtitle = TextStyle(
    fontSize: 14,
    color: Colors.white,
    // fontWeight: ,
  );

  var esRound = TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: <Widget>[

          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulo(),
                _gridBotones(),
              ],
            )
          )

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(49, 49, 78, 1),
        fixedColor: Color.fromRGBO(238, 123, 165, 1),
        unselectedItemColor: Colors.blueGrey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Calendario')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined),
            title: Text('Analytics')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text('Agenda')
          )
        ]
      ),

    );
  }

  Widget _fondoApp() {
    
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [            
            Color.fromRGBO(49, 46, 98, 1),
            Color.fromRGBO(34, 33, 53, 1),
          ],
          begin: FractionalOffset(0.0, 0.1),
          end: FractionalOffset(0.0, 1.0)
        ) 
      ),
    );




    final cajaRosa = Transform.rotate(
      angle: -pi / 4.0,
      child: Container(
        height: 360,
        width: 360,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 110, 170, 1.0),
              Color.fromRGBO(247, 139, 158, 1.0),
            ]),
          borderRadius: BorderRadius.circular(90)
        ),
      )
    );



    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -90,
          left: -10,
          child: cajaRosa
        ),
      ],
    );


  }

  Widget _titulo() {

    return SafeArea(
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Clasificacion de Tipos', style: esTitle,),
            SizedBox(height: 8),
            Text('''Elige el modelo que mas se adapte a ti, sientete
libre de elegir la que quieras''', style: esSubtitle,
            textAlign: TextAlign.start,),
          ],
        )
      ),
    );

  }

  Widget _gridBotones() {

    return Container(
      padding: EdgeInsets.only(left: 16),
      child: Table(
        children: [
          TableRow(
            children: [
              _roundButton(Icons.people, 'Agenda', Colors.pinkAccent),
              _roundButton(Icons.wifi, 'Wifi', Colors.blue),
            ] 
          ),
          TableRow(
            children: [
              _roundButton(Icons.message, 'Mensajes', Colors.yellow),
              _roundButton(Icons.settings, 'Settings', Colors.greenAccent),
            ] 
          ),
          TableRow(
            children: [
              _roundButton(Icons.settings_bluetooth, 'Bluetooth', Colors.purple),
              _roundButton(Icons.settings_voice, 'Voice', Colors.red),
            ] 
          ),
          TableRow(
            children: [
              _roundButton(Icons.movie, 'Videos', Colors.teal),
              _roundButton(Icons.mouse, 'Computer', Colors.grey),
            ] 
          ),
          TableRow(
            children: [
              _roundButton(Icons.settings_bluetooth, 'Bluetooth', Colors.purple),
              _roundButton(Icons.settings_voice, 'Voice', Colors.red),
            ] 
          ),
          TableRow(
            children: [
              _roundButton(Icons.settings_bluetooth, 'Bluetooth', Colors.purple),
              _roundButton(Icons.settings_voice, 'Voice', Colors.red),
            ] 
          ),
        ],
      ),
    );

  }

  Widget _roundButton(IconData icon, String texto, Color colorin) {

    return ClipRRect(
          child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180,
          margin: EdgeInsets.only(right: 16, bottom: 16),
          decoration: BoxDecoration(
            color:Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(30)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: colorin,
                radius: 40,
                child: Icon(icon, color: Colors.white, size: 30.0),
              ),
              Text(texto, style: esRound,)
            ],
          ),
        ),
      ),
    );

  }



}