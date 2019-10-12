import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(25.0)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.arrow_back),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(24),
                            ),
                            color: Colors.grey[200]
                          ),
                          child: Icon(
                            Icons.delete,
                            color: Colors.black45,
                          ),
                        )
                      ],
                    ),
                    Text("My Order", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                    ),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(left: 8.0),
                     child: Container(
                       height: 400,
                       width: 600,
                       child: ListView(
                         scrollDirection: Axis.vertical,
                         children: <Widget>[
                           Padding(
                             padding: EdgeInsets.only(left: 5.0, top: 15.0),
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
                                         Image.asset("assets/plate2.png", fit: BoxFit.cover),
                                         SizedBox(width: 0.0),
                                         Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: <Widget>[
                                             SizedBox(height: 10.0),
                                             Text("\$ 24.00",
                                               style: TextStyle(
                                                   color: Colors.greenAccent,
                                                   fontFamily: 'Montserrat',
                                                   fontSize: 25.0,
                                                   fontWeight: FontWeight.bold
                                               ),
                                             ),
                                             SizedBox(height: 5.0),
                                             Container(
                                               width: 175.0,
                                               child: Text("Ramen Soup with Park",
                                                 style: TextStyle(
                                                     color: Colors.black,
                                                     fontFamily: 'Montserrat',
                                                     fontSize: 14.0,
                                                     fontWeight: FontWeight.bold
                                                 ),
                                               ),
                                             ),
                                             Container(
                                               width: 175.0,
                                               child: Text("Cha Shu",
                                                 style: TextStyle(
                                                     color: Colors.black,
                                                     fontFamily: 'Montserrat',
                                                     fontSize: 14.0,
                                                     fontWeight: FontWeight.bold
                                                 ),
                                               ),
                                             ),
                                             SizedBox(height: 10.0),
                                             Text("entrance 260g",
                                               style: TextStyle(
                                                   color: Colors.grey,
                                                   fontFamily: 'Montserrat',
                                                   fontSize: 15.0
                                               ),
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
                           Padding(
                             padding: EdgeInsets.only(left: 5.0, top: 15.0),
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
                                         Image.asset("assets/plate2.png", fit: BoxFit.cover),
                                         SizedBox(width: 0.0),
                                         Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: <Widget>[
                                             SizedBox(height: 10.0),
                                             Text("\$ 24.00",
                                               style: TextStyle(
                                                   color: Colors.greenAccent,
                                                   fontFamily: 'Montserrat',
                                                   fontSize: 25.0,
                                                   fontWeight: FontWeight.bold
                                               ),
                                             ),
                                             SizedBox(height: 5.0),
                                             Container(
                                               width: 175.0,
                                               child: Text("Ramen Soup with Park",
                                                 style: TextStyle(
                                                     color: Colors.black,
                                                     fontFamily: 'Montserrat',
                                                     fontSize: 14.0,
                                                     fontWeight: FontWeight.bold
                                                 ),
                                               ),
                                             ),
                                             Container(
                                               width: 175.0,
                                               child: Text("Cha Shu",
                                                 style: TextStyle(
                                                     color: Colors.black,
                                                     fontFamily: 'Montserrat',
                                                     fontSize: 14.0,
                                                     fontWeight: FontWeight.bold
                                                 ),
                                               ),
                                             ),
                                             SizedBox(height: 10.0),
                                             Text("entrance 260g",
                                               style: TextStyle(
                                                   color: Colors.grey,
                                                   fontFamily: 'Montserrat',
                                                   fontSize: 15.0
                                               ),
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
                           Padding(
                             padding: EdgeInsets.only(left: 5.0, top: 15.0),
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
                                         Image.asset("assets/plate2.png", fit: BoxFit.cover),
                                         SizedBox(width: 0.0),
                                         Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: <Widget>[
                                             SizedBox(height: 10.0),
                                             Text("\$ 24.00",
                                               style: TextStyle(
                                                   color: Colors.greenAccent,
                                                   fontFamily: 'Montserrat',
                                                   fontSize: 25.0,
                                                   fontWeight: FontWeight.bold
                                               ),
                                             ),
                                             SizedBox(height: 5.0),
                                             Container(
                                               width: 175.0,
                                               child: Text("Ramen Soup with Park",
                                                 style: TextStyle(
                                                     color: Colors.black,
                                                     fontFamily: 'Montserrat',
                                                     fontSize: 14.0,
                                                     fontWeight: FontWeight.bold
                                                 ),
                                               ),
                                             ),
                                             Container(
                                               width: 175.0,
                                               child: Text("Cha Shu",
                                                 style: TextStyle(
                                                     color: Colors.black,
                                                     fontFamily: 'Montserrat',
                                                     fontSize: 14.0,
                                                     fontWeight: FontWeight.bold
                                                 ),
                                               ),
                                             ),
                                             SizedBox(height: 10.0),
                                             Text("entrance 260g",
                                               style: TextStyle(
                                                   color: Colors.grey,
                                                   fontFamily: 'Montserrat',
                                                   fontSize: 15.0
                                               ),
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
                         ],
                       ),
                     ),
                   )
                  ],
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
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0, bottom: 35),
                                      child: Text("total :", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0, bottom: 35),
                                      child: Text("  \$ 24", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),),
                                    ),

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
                                      padding: const EdgeInsets.all(25.0),
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                            return Order();
                                          }));
                                        },
                                        child: Text("Confirm Order", style: TextStyle(
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
      ),
    );
  }

}
