import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _heightFactorAnimation;
  double collapseHeightFactor = 0.70;
  double expandedHeightFactor = 0.65;
  bool _isAnimationComplete = false;


  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    _heightFactorAnimation = Tween<double>(begin: 0.90, end: 0.70).animate(_controller);
    /*_controller.addStatusListener((currentStatus){
      if(currentStatus == AnimationStatus.completed){
        _isAnimationComplete= true;
      }
    });*/

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  onButtomBarTap(){
    setState(() {
      if(_isAnimationComplete){
        _controller.reverse();
      }else{
        _controller.forward();  
      }
      _isAnimationComplete = !_isAnimationComplete;
    });
  }

  Widget getWidget(){
   return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        FractionallySizedBox(
          alignment: Alignment.topCenter,
          heightFactor: _heightFactorAnimation.value,
          child: Image.asset("assets/profil.jpg",
            fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap:(){
            onButtomBarTap();
          },
          child: FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 1.05 - _heightFactorAnimation.value,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)
                  )
                ),
              )
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final makeBottom = Container(
      child: BottomAppBar(
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.blur_on, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.code, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
    debugPrint(MediaQuery.of(context).size.height.toString());
    return Scaffold(
      bottomNavigationBar: makeBottom,
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, widget){
          return getWidget();
        },
      ),
    );
  }
}



