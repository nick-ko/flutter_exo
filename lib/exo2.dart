import 'package:flutter/material.dart';
import 'home.dart';

class Exo2 extends StatefulWidget {
  @override
  _Exo2State createState() => _Exo2State();
}

class _Exo2State extends State<Exo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          Dismissible(
            onDismissed: (direction){
              Navigator.pop(context);
            },
              key: UniqueKey(),
              child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            color: Colors.green,
          )
          ),
          Dismissible(
              key: UniqueKey(),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                color: Colors.white,
              )
          ),
          Dismissible(key: UniqueKey(),
            child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            color: Colors.orange,
          )),
        ],
      ),
    );
  }
}
