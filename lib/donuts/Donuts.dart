import 'package:flutter/material.dart';
import 'Details.dart';

class Donuts extends StatefulWidget {
  @override
  _DonutsState createState() => _DonutsState();
}

class _DonutsState extends State<Donuts> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        brightness: Brightness.light,
        leading: Icon(null),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.credit_card,size: 30,color: Colors.black45,),
                SizedBox(width: 12,),
                Icon(Icons.favorite_border,size: 30,color: Colors.black45,),
              ],
            )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 0.0,bottom: 20.0,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('Hi,',
                        style: TextStyle(color: Colors.grey[80],fontSize: 30),
                      ),
                      Text('Jack !',
                        style: TextStyle(color: Colors.grey[80], fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('DELIVER TO ',
                        style: TextStyle(color: Colors.grey[80],fontSize: 15),
                      ),
                      Text('797 cassie spurs',
                        style: TextStyle(color: Colors.indigo[400],
                            fontSize: 15,decorationStyle: TextDecorationStyle.solid),
                      ),
                      Icon(Icons.keyboard_arrow_down,color: Colors.indigo[400])
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(24),bottomLeft: Radius.circular(24)),
                      color: Colors.red[200],
                    ),
                    child: Container(
                     child: Padding(
                       padding: const EdgeInsets.all(18.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Column(
                             children: <Widget>[
                               Container(
                                 height: 58,
                                 width: 58,
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   border: Border.all(color: Colors.transparent,width: 4),
                                   color: Colors.white,
                                 ),
                                 child: Center(
                                   child: Icon(Icons.fastfood, color: Colors.black54,size: 38,),
                                 ),
                               ),
                               Text("All",style: TextStyle(fontWeight: FontWeight.bold),)
                             ],
                           ),
                           Column(
                             children: <Widget>[
                               Container(
                                 height: 58,
                                 width: 58,
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   border: Border.all(color: Colors.transparent,width: 4),
                                   color: Colors.red[100],
                                 ),
                                 child: Center(
                                   child: Icon(Icons.cake, color: Colors.black54,size: 38,),
                                 ),
                               ),
                               Text("Burger")
                             ],
                           ),
                           Column(
                             children: <Widget>[
                               Container(
                                 height: 58,
                                 width: 58,
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   border: Border.all(color: Colors.transparent,width: 4),
                                   color: Colors.red[100],
                                 ),
                                 child: Center(
                                   child: Icon(Icons.local_pizza, color: Colors.black54,size: 38,),
                                 ),
                               ),
                               Text("Pizza")
                             ],
                           ),
                           Column(
                             children: <Widget>[
                               Container(
                                 height: 58,
                                 width: 58,
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   border: Border.all(color: Colors.transparent,width: 4),
                                   color: Colors.red[100],
                                 ),
                                 child: Center(
                                   child: Icon(Icons.fastfood, color: Colors.black54,size: 38,),
                                 ),
                               ),
                               Text("Desert")
                             ],
                           ),
                         ],
                       ),
                     ),
                    )
                  ),
                ],
              ),
            ),
            _listItem('assets/plate6.png', 'Brindle room',  3),
            SizedBox(height: 5.0),
             Padding(
          padding: EdgeInsets.only(left: 15.0, top: 0.0),
          child: Stack(
            children: <Widget>[
              Container(
                height: 120.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.white,
                          ),
                          child: Image.asset("assets/plate4.png", fit: BoxFit.cover)
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 5.0),
                          Text("McDonal's",
                            style: TextStyle(
                                color: Color(0xFF563734),
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 2.0),
                          Row(
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.yellowAccent,),
                              Text("4.3", style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(width: 10,),
                              Text(" - fast-food - \$\$", style: TextStyle(
                                  color: Colors.grey
                              ),
                              ),
                              SizedBox(width: 40,),
                              Icon(Icons.favorite,color: Colors.redAccent,)
                            ],
                          ),
                          SizedBox(height: 1.0),
                          Row(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Colors.grey[300],
                                ),
                                height: 30,
                                width: 120,
                                child: Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.timer),
                                      Text("20-25 min")
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Text("2.5 km")
                            ],
                          )
                        ],
                      )
                    ],

                  ),
                ),
              )
            ],
          ),
        ),
            SizedBox(height: 5.0),
            _listItem('assets/plate1.png', 'cupcake delivery',  4),
            SizedBox(height: 5.0)
          ],
        ),
      ),
    );
  }

  _listItem(String imgPath, String foodName, int likes) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, top: 0.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 120.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white,
                      ),
                      child: Image.asset(imgPath, fit: BoxFit.cover)
                  ),
                  SizedBox(width: 5.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 5.0),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return DetailsDonuut();
                          }));
                        },
                        child: Text(foodName,
                          style: TextStyle(
                              color: Color(0xFF563734),
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.yellowAccent,),
                          Text(likes.toString(), style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text(" - fast-food - \$\$", style: TextStyle(
                            color: Colors.grey
                          ),
                          ),
                          SizedBox(width: 40,),
                          Icon(Icons.favorite_border,color: Colors.redAccent,)
                        ],
                      ),
                      SizedBox(height: 1.0),
                      Row(
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.grey[300],
                              ),
                              height: 30,
                              width: 120,
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Row(
                                  children: <Widget>[
                                   Icon(Icons.timer),
                                    Text("20-25 min")
                                  ],
                                ),
                              ),
                            ),
                          SizedBox(width: 10.0),
                          Text("2.5 km")
                        ],
                      )
                    ],
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


