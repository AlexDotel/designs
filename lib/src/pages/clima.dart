import 'package:flutter/material.dart';

class Clima extends StatelessWidget {

  var color = Color.fromRGBO(75, 48, 37, 1);

  var esTemp = TextStyle(
    fontSize: 50,
    color: Color.fromRGBO(75, 48, 37, 1),
    fontWeight: FontWeight.bold

  );

  var esTime = TextStyle(
    fontSize: 40,
    color: Color.fromRGBO(75, 48, 37, 1),
    // fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic

  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body:  PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
          page1(),
          page2(context),

        ],)

    );
  }

  page1() {

    return Stack(
      children: <Widget>[
        //Fondo
        Container(
          height: double.infinity,
          width: double.infinity,
          color: color
        ),
        //Imagen de Fondo
        Image(
          image: AssetImage('assets/img/desert.jpg'),
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
          
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 60),
              Text('41°', style: esTemp,),
              Text('HOTEST', style: esTime,),
              Expanded(child: Container()),
              Icon(Icons.keyboard_arrow_down, size: 70, color: Colors.white)
            ],
          ),
        )
      ],
    );

  }

  page2(BuildContext context) {

    return Container(
        height: double.infinity,
        width: double.infinity,
        color: color,
        child: Center(
          child: RaisedButton(
            color: Colors.white,
            shape: StadiumBorder(),
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Bienvenido', 
                style: TextStyle(
                  fontSize: 30,
                  color: color, 
                  fontFamily: 'Poppins',
                ), 
              )
            ),
            onPressed: (){
              Navigator.pushNamed(context, 'avanzado');
            },
          ),
        ),
      
    );


  }



}