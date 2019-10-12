import 'package:flutter/material.dart';
class Bank extends StatefulWidget {
  @override
  _BankState createState() => _BankState();
}



class _BankState extends State<Bank> {
  @override
  Widget build(BuildContext context) {
    Widget _buildTopUi(){
      return Container(
          height: MediaQuery.of(context).size.height/2.8,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0,
                right: 0,
                top:0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
                    color: Colors.redAccent,
                  ),
                  height: MediaQuery.of(context).size.height/5,
                ),
              ),
              Positioned(
                left: 8,
                top: 20,
                right: 38,
                child: Container(
                  height: 64,
                  child: Row(
                    children: <Widget>[
                      Text("April",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),
                      ),
                      SizedBox(width: 25,),
                      Text("May",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),
                      ),
                      SizedBox(width: 25,),
                      Text("June",style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),
                      ),
                      SizedBox(width: 25,),
                      Text("2018",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),
                      ),
                      SizedBox(width: 35,),
                      IconButton(icon: Icon(Icons.settings,color: Colors.white,), onPressed: (){}),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height/7.5,
                bottom: 0,
                left: 16,
                right: 16,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 24,left: 16,right: 16, bottom: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24)
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("Cashback", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                            ),
                            ),
                            Spacer(),
                            Text('+\$ 109', style: TextStyle(
                              fontSize: 22
                            ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12,),

                        Row(
                            children: <Widget>[
                              Flexible(
                                flex: 4,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Text("You spend 2560 with average "),
                                 Text("Cashback 3.5%"),
                               ],
                              )
                              ),
                              Flexible(
                                flex: 2,
                                child: Container(
                                  child: Image(height: 50,image: AssetImage("assets/card.jpg")),
                                ),
                              )
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
      );
    }
    return Scaffold(
       body: SingleChildScrollView(
         child: Column(
           children: <Widget>[
             _buildTopUi(),
             Container(
                 height: MediaQuery.of(context).size.height/4.5,
                 child: Stack(
                   children: <Widget>[
                     Positioned(
                       top: 0,
                       bottom: 0,
                       left: 16,
                       right: 16,
                       child: Card(
                         elevation: 4,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(24)
                         ),
                         child: Container(
                           padding: EdgeInsets.only(top: 24,left: 16,right: 16, bottom: 8),
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(24)
                           ),
                           child: Column(
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Text("Card Safe", style: TextStyle(
                                     fontSize: 18,
                                     fontWeight: FontWeight.bold,
                                   ),
                                   ),
                                   Spacer(),
                                   Text('+\$ 419', style: TextStyle(
                                       fontSize: 22
                                   ),
                                   ),
                                 ],
                               ),
                               SizedBox(height: 12,),

                               Row(
                                 children: <Widget>[
                                   Flexible(
                                       flex: 4,
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: <Widget>[
                                           Text("You spend 2560 with average "),
                                           Text("Cashback 3.5%"),
                                         ],
                                       )
                                   ),
                                   Flexible(
                                     flex: 2,
                                     child: Container(
                                       child: Image(height: 50,image: AssetImage("assets/card.jpg")),
                                     ),
                                   )
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),
                     )
                   ],
                 )
             ),
             Container(
                 height: MediaQuery.of(context).size.height/4.5,
                 child: Stack(
                   children: <Widget>[
                     Positioned(
                       top: 0,
                       bottom: 0,
                       left: 16,
                       right: 16,
                       child: Card(
                         elevation: 4,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(24)
                         ),
                         child: Container(
                           padding: EdgeInsets.only(top: 24,left: 16,right: 16, bottom: 8),
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(24)
                           ),
                           child: Column(
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Text("Open deposit", style: TextStyle(
                                     fontSize: 18,
                                     fontWeight: FontWeight.bold,
                                   ),
                                   ),
                                   Spacer(),
                                   Text('15 %', style: TextStyle(
                                       fontSize: 22
                                   ),
                                   ),
                                 ],
                               ),
                               SizedBox(height: 12,),

                               Row(
                                 children: <Widget>[
                                   Flexible(
                                       flex: 4,
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: <Widget>[
                                           Text("You spend 2560 with average "),
                                           Text("Cashback 3.5%"),
                                         ],
                                       )
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),
                     )
                   ],
                 )
             ),
             Container(
                 height: MediaQuery.of(context).size.height/4.5,
                 child: Stack(
                   children: <Widget>[
                     Positioned(
                       top: 0,
                       bottom: 0,
                       left: 16,
                       right: 16,
                       child: Card(
                         elevation: 4,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(24)
                         ),
                         child: Container(
                           padding: EdgeInsets.only(top: 24,left: 16,right: 16, bottom: 8),
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(24)
                           ),
                           child: Column(
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Text("Miles", style: TextStyle(
                                     fontSize: 18,
                                     fontWeight: FontWeight.bold,
                                   ),
                                   ),
                                   Spacer(),
                                   Text('+ 125m', style: TextStyle(
                                       fontSize: 22
                                   ),
                                   ),
                                 ],
                               ),
                               SizedBox(height: 12,),

                               Row(
                                 children: <Widget>[
                                   Flexible(
                                       flex: 4,
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: <Widget>[
                                           Text("You miles are valid to flights "),
                                           Text("to UIA"),
                                         ],
                                       )
                                   ),
                                   Flexible(
                                     flex: 2,
                                     child: Container(
                                       child: Image(height: 50,image: AssetImage("assets/card.jpg")),
                                     ),
                                   )
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),
                     )
                   ],
                 )
             ),
           ],
         ),
       ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: 0,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card,color: Colors.grey,),
              title: Text("Cards")),
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(Icons.graphic_eq,color: Colors.grey,),
                  onPressed: (){
                  }),
              title: Text("Expenses", style: TextStyle())),

          BottomNavigationBarItem(
            backgroundColor: Colors.redAccent,
              icon: IconButton(
                color: Colors.redAccent,
                  icon: Icon(Icons.attach_money,),
                  onPressed: (){
                  }),
              title: Text("Profile", style: TextStyle())),
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(Icons.timer,color: Colors.grey,),
                  onPressed: (){
                  }),
              title: Text("Credit", style: TextStyle()))
        ],
      ),
    );
  }
}
