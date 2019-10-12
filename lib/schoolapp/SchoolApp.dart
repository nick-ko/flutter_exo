import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exo_app/schoolapp/Profil.dart';

class SchoolApp extends StatefulWidget {
  @override
  _SchoolAppState createState() => _SchoolAppState();
}

class _SchoolAppState extends State<SchoolApp> {

  Widget _buildTopUi(){
    return Container(
        height: MediaQuery.of(context).size.height/1.8,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              top:0,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2019/06/07/13/11/landscape-4258253_960_720.jpg"
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.deepOrangeAccent,
                ),
                height: MediaQuery.of(context).size.height/5,
              ),
            ),
            Positioned(
              left: 8,
              top: 48,
              right: 38,
              child: Container(
                height: 64,
                child: Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,), onPressed: (){}),
                    SizedBox(width: 40,),
                    Text("School Events",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                    ),)
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height/6.5,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.deepOrangeAccent, width: 2),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.school,
                            size: 38,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Text("St. Xavier school", style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[300]
                      ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.location_on, color: Colors.deepOrangeAccent,),
                          Text("576 Sebastian, arcade, NY, 12548", style: TextStyle(color: Colors.indigo[400], fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.call, color: Colors.deepOrangeAccent,),
                          Text("9898989898", style: TextStyle(color: Colors.indigo[400], fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("360",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("Followers", style: TextStyle(fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              child: Center(
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                      return SchoolProfil();
                                    }));
                                  },
                                  child: Text("Follow",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, ),),
                                )
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
    );
  }

  List<Widget> _listArticle(BuildContext context){
    return [
      Container(
        padding: EdgeInsets.only(left: 16,right: 8),
        margin: EdgeInsets.only(left: 24,right: 24,bottom: 16),
        height: MediaQuery.of(context).size.height / 2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.deepOrangeAccent,width: 2),
                    ),
                    child: Center(
                      child: Icon(Icons.school, color: Colors.green,),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("St Xavier school",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.indigo[400]
                        ),
                      ),
                      Text("1 hour ago",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.indigo[400],
                            fontSize: 10
                        ),)
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: AssetImage("assets/eleve.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text("Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500,.",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.indigo[400],
                      letterSpacing: 1.2
                  ),),
              ),
            )
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 16,right: 8),
        margin: EdgeInsets.only(left: 24,right: 24,bottom: 16),
        height: MediaQuery.of(context).size.height / 2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.deepOrangeAccent,width: 2),
                    ),
                    child: Center(
                      child: Icon(Icons.school, color: Colors.green,),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("St Xavier school",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.indigo[400]
                        ),
                      ),
                      Text("1 hour ago",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.indigo[400],
                            fontSize: 10
                        ),)
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: AssetImage("assets/eleve.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text("Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500,.",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.indigo[400],
                      letterSpacing: 1.2
                  ),),
              ),
            )
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 16,right: 8),
        margin: EdgeInsets.only(left: 24,right: 24,bottom: 16),
        height: MediaQuery.of(context).size.height / 2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.deepOrangeAccent,width: 2),
                    ),
                    child: Center(
                      child: Icon(Icons.school, color: Colors.green,),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("St Xavier school",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.indigo[400]
                        ),
                      ),
                      Text("1 hour ago",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.indigo[400],
                            fontSize: 10
                        ),)
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: AssetImage("assets/eleve.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text("Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500,.",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.indigo[400],
                      letterSpacing: 1.2
                  ),),
              ),
            )
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildTopUi(),
            Container(
              padding: EdgeInsets.only(top: 16),
              height: MediaQuery.of(context).size.height / 2,
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: _listArticle(context)
              ),
            )
          ],
        ),
      ),
    );
  }
}
