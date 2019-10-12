import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SchoolProfil extends StatefulWidget {
  @override
  _SchoolProfilState createState() => _SchoolProfilState();
}

class _SchoolProfilState extends State<SchoolProfil> {

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
                    Spacer(),
                    Text("Profile",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                    ),
                    ),
                    Spacer(),
                    IconButton(icon: Icon(Icons.edit,color: Colors.white,), onPressed: (){}),
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
                    ],
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
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildTopUi(),
            Container(
              padding: EdgeInsets.only(left: 16,right: 8),
              margin: EdgeInsets.only(left: 24,right: 24,bottom: 4),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Gender",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.indigo[400],
                                fontSize: 18,
                              ),
                            ),
                            Text("Male",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.indigo[400],
                                  fontSize: 12
                              ),
                            ),
                            Divider(color: Colors.blueGrey,)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.blueGrey,),
                  Expanded(
                    flex: 2,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Date of Birth",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                color: Colors.indigo[400],
                                fontSize: 18,
                              ),
                            ),
                            Text("05 March,2000",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.indigo[400],
                                  fontSize: 10
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.blueGrey,),
                  Expanded(
                    flex: 2,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Class",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                color: Colors.indigo[400],
                                fontSize: 18,
                              ),
                            ),
                            Text("9th",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.indigo[400],
                                  fontSize: 10
                              ),
                            ),
                            Divider(color: Colors.blueGrey,)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.blueGrey,),
                  Expanded(
                    flex: 2,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Division",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                color: Colors.indigo[400],
                                fontSize: 18,
                              ),
                            ),
                            Text("A",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.indigo[400],
                                  fontSize: 10
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 4, left: 24,right: 24,bottom: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24)
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
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
                                child: Text("Update Profile",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, ),),
                              )
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
