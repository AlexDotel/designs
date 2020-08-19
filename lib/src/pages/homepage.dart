import 'package:flutter/material.dart'; 

class HomePage extends StatelessWidget {

  var url = 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjExMDk0fQ&w=1000&q=80';

  var esTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold
  );

  var esSub = TextStyle(
    fontSize: 16,
    color: Colors.grey[600],
    letterSpacing: 1.5
    // fontStyle: FontStyle.italic
  );
  
  var esActions = TextStyle(
    fontSize: 16,
    color: Colors.blue,
    fontWeight: FontWeight.bold
  );
  
  var esDesc = TextStyle(
    fontSize: 16,
    color: Colors.black87,
    // fontWeight: FontWeight.bold
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
        
          crearImagen(),
          crearTitulo(),
          SizedBox(height: 20),
          crearAcciones(context),
          descripcion(),
          descripcion(),
          descripcion(),
          descripcion(),
          descripcion(),
          descripcion(),

          ]),
      )

    );
  }
  
  Widget crearImagen(){

    return Image(
            image: NetworkImage(url),
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover
          );

  }

  Widget crearTitulo(){

    return Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text('Monte de Piso', style: esTitle),
                    // SizedBox(height: 5),
                    Text('El monte mas alto de soria', style: esSub),
                  ],),
                ),

                Row(children: <Widget>[
                  Icon(Icons.star, color: Colors.orangeAccent),
                  Text('5.0', style: TextStyle(fontSize: 20)),
                  SizedBox(width: 10)
                ],)
            ],)
          );

  }

  Widget crearAcciones(BuildContext context){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(width: 30),
        accion(Icons.call, 'CALL', context),
        accion(Icons.near_me, 'ROUTE', context),
        accion(Icons.share, 'SHARE', context),
        SizedBox(width: 30),

    ],);

  }

  Widget accion(IconData icon, String texto, BuildContext context){

    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: Column(children: <Widget>[
          IconButton(
            icon: Icon(icon, size: 40,color: Colors.blue,),
            onPressed: (){
              Navigator.pushNamed(context, 'clima');
            },
          ),
          SizedBox(height: 10),
          Text(texto, style: esActions,)
        ],),
    );

  }

  Widget descripcion(){

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Text(
        'Dolore qui adipisicing eu nulla nostrud anim.Veniam enim mollit mollit veniam et eu Lorem amet officia et consequat id. Laboris cillum consectetur id enim ad commodo mollit irure qui consequat. Aliquip nulla id sint est.'
        ,style: esDesc
        ,textAlign: TextAlign.justify,
      )
    );

  }


}