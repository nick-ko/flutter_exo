import 'package:flutter/material.dart';

class Exo3 extends StatefulWidget {
  @override
  _Exo3State createState() => _Exo3State();
}

class _Exo3State extends State<Exo3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Exercice 3"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: RichText(
              text: TextSpan(
                text: '',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(text: 'sans le savoir',style: TextStyle(fontSize: 35.0,color: Colors.black,
                      fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none)),
                  TextSpan(text: ',vous avez peut-être sur votre ordinateur',
                      style: TextStyle(fontSize: 20.0,color: Colors.black,
                          decoration: TextDecoration.none)),
                ],
              ),
            ),
          ),
          SeparateWidget(),
          InkWell(
            child: Text("En savoir plus ....", style: TextStyle(color: Colors.black),),
            onTap: (){

            },
          )
        ],
      ),
    );
  }
}

class SeparateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(

        child: Text("des programme qui son potentiellement dangereux",
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.red
          ),),
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Danger'),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 5),
            action: SnackBarAction(
              label: 'En savoir plus',
              onPressed: (){

              },
            ),
          ));
        });
  }
}
