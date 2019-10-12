import 'package:exo_app/donuts/Donuts.dart';
import 'package:flutter/material.dart';

class DetailsDonuut extends StatefulWidget {
  @override
  _DetailsDonuutState createState() => _DetailsDonuutState();
}

class _DetailsDonuutState extends State<DetailsDonuut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(58.0),
                    bottomRight: Radius.circular(58.0)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        IconButton(icon: Icon( Icons.arrow_back),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return Donuts();
                          }));
                        },),
                        SizedBox(width: 172,),
                        Icon(Icons.credit_card,size: 30,color: Colors.black45,),
                        SizedBox(width: 12,),
                        Icon(Icons.favorite_border,size: 30,color: Colors.black45,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:0.0),
                          child: Container(
                            child: Container(
                              width: 190,
                              child: Image.asset("assets/plate4.png",
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text("Weight",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("450"),
                            SizedBox(height: 25,),
                            Text("Calories",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("4506 cal"),
                            SizedBox(height: 25,),
                            Text("People",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("1 person")
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Rasberry donuts",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                          ,),
                        SizedBox(height: 6.0),
                        Text("\$12.50",
                          style: TextStyle(color: Colors.redAccent ,fontSize: 18),
                        ),
                        SizedBox(height: 6.0),
                        Text("natural an artificial floyer",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text("does not contain rasberry",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text("Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant ",
                          style: TextStyle(
                              fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Icon(Icons.favorite_border,color: Colors.redAccent,),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Colors.red[200],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 18.0, left: 66, right: 16),
                                  child: Text("ADD TO CART",
                                    style: TextStyle(color: Colors.white),),
                                ),
                              )
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(top: 10,bottom: 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:28.0,top: 20),
                    child: Text('Cart',
                        style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold)
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 48,
                        width: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Image(
                            image: AssetImage("assets/plate6.png"),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                      Text("x1",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
                    ],
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 48,
                        width: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,
                        ),
                        child: Center(
                            child: Image(
                              image: AssetImage("assets/plate2.png"),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      Text("x1",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left:28.0,top: 20),
                    child: Text("\$ 22.70",
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
