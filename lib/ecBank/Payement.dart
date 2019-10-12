import 'package:flutter/material.dart';

class Payement extends StatefulWidget {
  @override
  _PayementState createState() => _PayementState();
}

class _PayementState extends State<Payement> {
  Widget makeCard(title,image,Color color){
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
          decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(24),),
          child: Column(
            children: <Widget>[
              ListTile(
                contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                leading: CircleAvatar(
                        backgroundImage: AssetImage(image), // no matter how big it is, it won't overflow
                  ),
                title: Text(
                  title,
                  style: TextStyle(
                      color: color,
                      fontSize: 20),
                ),
                // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                trailing:
                Icon(Icons.radio_button_unchecked, color: Colors.grey[400], size: 30.0),
                onTap: () {

                },
              ),
            ],
          )
      ),
    );
  }
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
              icon: Icon(Icons.home, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.content_paste, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_outline, color: Colors.black),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
    return Scaffold(

      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        title: Text("Payment", style: TextStyle(color: Colors.black),),
        elevation: 0.0,
      ),
      body: Column(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:20.0,right: 200.0,bottom: 10,left: 0.0),
            child: Text("Choose payment method",
              style: TextStyle(color: Colors.blueGrey[400], fontSize: 18),),
          ),
          makeCard("Apple Pay","assets/pay.png",Colors.blueGrey),
          Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(24),),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/master.png"), // no matter how big it is, it won't overflow
                      ),
                      title: Text(
                        "...6436",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20),
                      ),
                      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                      trailing:
                      Icon(Icons.radio_button_checked, color: Colors.blue, size: 30.0),
                      onTap: () {

                      },
                    ),
                  ],
                )
            ),
          ),
          makeCard("....6555","assets/visa.png",Colors.blueGrey),
          makeCard("Cash","assets/pay.png",Colors.blueGrey)
        ],
      ),
      bottomNavigationBar: makeBottom,
    );
  }
}
