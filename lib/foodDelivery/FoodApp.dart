import 'package:flutter/material.dart';
import 'FadeAnimation.dart';
import 'Details.dart';

class FoodApp extends StatefulWidget {
  @override
  _FoodAppState createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  @override
    Widget build(BuildContext context) {
    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Colors.grey[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.green),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.card_giftcard, color: Colors.black),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
      return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          brightness: Brightness.light,
          leading: Icon(null),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profil.jpg"),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(1, Text('Food Delivery', style: TextStyle(color: Colors.grey[80], fontWeight: FontWeight.bold, fontSize: 30),)),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio:  1.7,
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Colors.green[200],
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),bottomRight: Radius.circular(40.0)),
                              ),
                              child: Align(
                                child: Icon(Icons.cake,color: Colors.green,)
                              ),
                            ),
                          ),
                          FadeAnimation(1, makeCategory(isActive: true, title: 'Asian')),
                          FadeAnimation(1.3, makeCategory(isActive: false, title: 'Italia')),
                          FadeAnimation(1.4, makeCategory(isActive: false, title: 'American')),
                          FadeAnimation(1.5, makeCategory(isActive: false, title: 'African')),
                          FadeAnimation(1.6, makeCategory(isActive: false, title: 'Salad')),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
              FadeAnimation(1, Padding(
                padding: EdgeInsets.all(20),
                child: Text('The Best Dishes', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              )),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      FadeAnimation(1.4, makeItem(image: 'assets/two.jpg')),
                      FadeAnimation(1.5, makeItem(image: 'assets/one.jpg')),
                      FadeAnimation(1.6, makeItem(image: 'assets/three.jpg')),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
        bottomNavigationBar: makeBottom,
      );
    }

    Widget makeCategory({isActive, title}) {
      return AspectRatio(
        aspectRatio: isActive ? 3 : 2.5 / 1,
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: isActive ? Colors.green[200] : Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),bottomRight: Radius.circular(40.0)),
          ),
          child: Align(
            child: Text(title, style: TextStyle(color: isActive ? Colors.green : Colors.grey[500], fontSize: 18, fontWeight: isActive ? FontWeight.bold : FontWeight.w100),),
          ),
        ),
      );
    }

    Widget  makeItem({image}) {
      return AspectRatio(
        aspectRatio: 1 / 1.5,
        child: GestureDetector(
          child: Container(
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                )
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      stops: [.2, .9],
                      colors: [
                        Colors.black.withOpacity(.9),
                        Colors.black.withOpacity(.3),
                      ]
                  )
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.favorite, color: Colors.white, ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("\$ 13.00", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                              return DetailsFood();
                            }));
                          },
                          child: Text("alloco mimosas", style: TextStyle(color: Colors.white, fontSize: 20),),
                        )

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

}
