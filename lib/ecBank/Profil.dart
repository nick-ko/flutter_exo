import 'package:flutter/material.dart';
import 'Payement.dart';

class EcBankProfil extends StatefulWidget {
  @override
  _EcBankProfilState createState() => _EcBankProfilState();
}

class _EcBankProfilState extends State<EcBankProfil> {
  Widget _buildTopUi(){
    return Container(
        height: MediaQuery.of(context).size.height/2.7,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 8,
              top: 48,
              right: 38,
              child: Container(
                height: 64,
                child: Row(
                  children: <Widget>[
                    Text("Profile",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 34
                    ),
                    ),
                    Spacer(),
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Center(
                        child: CircleAvatar(
                          maxRadius: 30,
                          backgroundImage: AssetImage("assets/profil.jpg"),
                        )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height/5.5,
              bottom: 0,
              left: 16,
              right: 16,
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)
                ),
                child: Container(
                   child: Image(image: AssetImage("assets/visa.png"),
                     fit: BoxFit.cover,
                   ),
                ),
              ),
            )
          ],
        )
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
              icon: Icon(Icons.person_outline, color: Colors.blue),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildTopUi(),
            Card(
              elevation: 0.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      leading: Container(
                        padding: EdgeInsets.only(right: 12.0),
                        decoration: new BoxDecoration(
                            border: new Border(
                                right: new BorderSide(width: 1.0, color: Colors.white24))),
                        child: Icon(Icons.person_outline, color: Colors.black),
                      ),
                      title: Text(
                        "Personal details",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                      trailing:
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey[400], size: 30.0),
                      onTap: () {
                      },
                    ),
                    ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      leading: Container(
                        padding: EdgeInsets.only(right: 12.0),
                        decoration: new BoxDecoration(
                            border: new Border(
                                right: new BorderSide(width: 1.0, color: Colors.white24))),
                        child: Icon(Icons.favorite_border, color: Colors.black),
                      ),
                      title: Text(
                        "Your Favorites",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                      trailing:
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey[400], size: 30.0),
                      onTap: () {
                      },
                    ),
                    ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      leading: Container(
                        padding: EdgeInsets.only(right: 12.0),
                        decoration: new BoxDecoration(
                            border: new Border(
                                right: new BorderSide(width: 1.0, color: Colors.white24))),
                        child: Icon(Icons.credit_card, color: Colors.black),
                      ),
                      title: Text(
                        "Payment",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                      trailing:
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey[400], size: 30.0),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return Payement();
                        }));
                      },
                    ),
                    ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      leading: Container(
                        padding: EdgeInsets.only(right: 12.0),
                        decoration: new BoxDecoration(
                            border: new Border(
                                right: new BorderSide(width: 1.0, color: Colors.white24))),
                        child: Icon(Icons.help_outline, color: Colors.black),
                      ),
                      title: Text(
                        "Help Center",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                      trailing:
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey[400], size: 30.0),
                      onTap: () {
                      },
                    ),
                    ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      leading: Container(
                        padding: EdgeInsets.only(right: 12.0),
                        decoration: new BoxDecoration(
                            border: new Border(
                                right: new BorderSide(width: 1.0, color: Colors.white24))),
                        child: Icon(Icons.card_giftcard, color: Colors.black),
                      ),
                      title: Text(
                        "Promocodes",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                      trailing:
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey[400], size: 30.0),
                      onTap: () {
                      },
                    ),
                    ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      leading: Container(
                        padding: EdgeInsets.only(right: 12.0),
                        decoration: new BoxDecoration(
                            border: new Border(
                                right: new BorderSide(width: 1.0, color: Colors.white24))),
                        child: Icon(Icons.play_circle_outline, color: Colors.black),
                      ),
                      title: Text(
                        "Log out",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                      trailing:
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey[400], size: 30.0),
                      onTap: () {
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: makeBottom,
    );
  }
}
