import 'package:flutter/material.dart';

class Exo1 extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<Exo1> with SingleTickerProviderStateMixin {
  TextEditingController emailEditingContrller = TextEditingController();
  double padValue = 0;
  bool click= false;

  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
      lowerBound: 0.0,
      upperBound: 0.1,
    );
    _animationController.addListener(() {
      setState(() {});
    });
  }



  @override
  Widget build(BuildContext context) {
    double scale = 1 - _animationController.value;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Exercice 1"),
      ),
      body: new Column(
        children: <Widget>[
          Expanded(
            child: AnimatedPadding(
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(24),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        Center(
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: FlutterLogo(size: 100,),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Draggable(
                          child: TextField(
                            autofocus: false,
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                            controller: emailEditingContrller,
                            decoration: InputDecoration(
                                labelText: "Email",
                                hintText: "Email",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.green,
                                        style: BorderStyle.solid))),
                          ),
                          feedback: TextField(
                            autofocus: false,
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                            controller: emailEditingContrller,
                            decoration: InputDecoration(
                                labelText: "Email",
                                hintText: "Email",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.green,
                                        style: BorderStyle.solid))),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          autofocus: false,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          controller: emailEditingContrller,
                          decoration: InputDecoration(
                              labelText: "Mot de Passe",
                              hintText: "Mot de Passe",
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: Colors.green,
                                      style: BorderStyle.solid))),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ButtonTheme(
                          //elevation: 4,
                          //color: Colors.green,
                          minWidth: double.infinity,
                          child: MaterialButton(
                            onPressed: () => {},
                            textColor: Colors.white,
                            color: Colors.blue,
                            height: 50,
                            child: Text("CONNEXION"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              duration: const Duration(seconds: 1),
              padding: EdgeInsets.only(bottom: padValue),
              curve: Curves.bounceInOut,
            ),
          ),
          Text(''),
          click ? GestureDetector(
            onTapUp: _onTapUp,
            onTapDown: _onTapDown,
            child: Transform.scale(
              scale: scale,
              child: Container(
                width: 300,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(38.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 5.0,
                      spreadRadius: 0.25,
                    ),
                  ],
                ),
                child: Text("Bienvenue"),
                alignment: Alignment.center,
              ),
            ),
          ) :
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                textColor: Colors.white,
                color: Colors.blue,
                height: 50,
                child: Text("CONNEXION"),
                onPressed: () {
                  setState(() {
                    padValue = padValue + 200;
                    click = true;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _animationController.reverse();
  }
}