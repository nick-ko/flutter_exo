import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'order.dart';

class DetailsFood extends StatefulWidget {
  @override
  _DetailsFoodState createState() => _DetailsFoodState();
}

class _DetailsFoodState extends State<DetailsFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                color: Colors.orange[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.arrow_back),
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.favorite_border, color: Colors.grey, ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 70,),
                      width: 350,
                      height: 159,
                      child: Image(image: AssetImage("assets/plate4.png"),
                      fit: BoxFit.cover,)
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Text("\$12.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text('Ramen Soup with Park',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0)
                        ),
                        Text('Cha Shu',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(50.0),
                    topLeft: Radius.circular(-50)
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Row(
                      children: <Widget>[
                        Text('Ingredients:', style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(top:18.0,right: 8.0,),
                      child: Container(
                        height: 70,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Container(
                                height: 75.0,
                                width: MediaQuery.of(context).size.width / 2 - 80,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    )
                                ),
                                child: Image(
                                  image: AssetImage("assets/plate6.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Container(
                                height: 75.0,
                                width: MediaQuery.of(context).size.width / 2 - 80,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    )
                                ),
                                child: Image(
                                  image: AssetImage("assets/plate2.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Container(
                                height: 75.0,
                                width: MediaQuery.of(context).size.width / 2 - 80,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    )
                                ),
                                child: Image(
                                  image: AssetImage("assets/plate1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Container(
                                height: 75.0,
                                width: MediaQuery.of(context).size.width / 2 - 80,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    )
                                ),
                                child: Image(
                                  image: AssetImage("assets/plate2.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(50.0)),
            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                     flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.only(topRight: Radius.circular(50.0)),
                          color: Colors.black,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: double.infinity,
                              child: Row(
                                children: <Widget>[
                                  IconButton(icon: Icon(Icons.add,color: Colors.white,), onPressed:(){}),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 35.0, bottom: 35),
                                    child: Text("2", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                    ),),
                                  ),
                                  IconButton(icon: Icon(Icons.maximize,color: Colors.white,), onPressed:(){}),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                  Flexible(
                      flex: 4,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50.0)),
                          color: Colors.greenAccent,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: double.infinity,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                          return Order();
                                        }));
                                      },
                                      child: Text("Add to Order", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                      ),),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                  )
                ],
              ),
          ),
          )
        ],
      ),
    );
  }
}
