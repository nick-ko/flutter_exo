import 'package:flutter/material.dart';
import 'exo1.dart';
import 'exo2.dart';
import 'exo3.dart';
import 'test.dart';
import 'Greenery.dart';
import 'Profil.dart';
import 'schoolapp/SchoolApp.dart';
import 'ecBank/Profil.dart';
import 'foodDelivery/FoodApp.dart';
import 'E-bank/Bank.dart';
import 'donuts/Donuts.dart';
import 'despicable/pages/character_listing_screen.dart';
import 'calculator/Calculator.dart';


class HomePage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<HomePage> {

  void toNewPage(Widget widget){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return widget;
    }));
  }

  List<Widget> page=[
    Exo1(),
    Exo2(),
    Exo3(),
    Calculator(),
    GreeneryPage(title: 'Greenery',
      firstColor: Colors.blue,
      secondColor: Colors.red,
      price: '25',
      productImage: Image.asset("assets/plate1.png", fit: BoxFit.cover,),
    ),
    ProfilePage(),
    SchoolApp(),
    EcBankProfil(),
    FoodApp(),
    Bank(),
    Donuts(),
    CharacterListingScreen(),
  ];

  List<String> title=[
    "Exercice 1",
    "Exercice 2",
    "Exercice 3",
    "Calculatrice",
    "Template Greenery",
    "Profil template",
    "School App Template",
    "EcBank Template",
    "Food App Template",
    "E-Bank Template",
    "Donuts Template",
    "Despicable Me Template"
  ];
  List docs;
  TextEditingController editingController = TextEditingController();

  List<String> duplicateItems = ["invisible","frap", "jusqu'au bout", "ma grande famille","teenager"];
  var items = List<String>();

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if(query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if(item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }

  }

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(title, page) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.code, color: Colors.white),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                // tag: 'hero',
                child: LinearProgressIndicator(
                    backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                    value: 0.0,
                    valueColor: AlwaysStoppedAnimation(Colors.green)),
              )),
          Expanded(
            flex: 4,
            child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text("",
                    style: TextStyle(color: Colors.white))),
          )
        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
      onTap: () {
        toNewPage(page);
      },
    );

    Card makeCard(title,page) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(title, page),
      ),
    );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child:
      /*Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              filterSearchResults(value);
            },
            controller: editingController,
            decoration: InputDecoration(
                labelText: "Chercher",
                hintText: "Chercher un film ou une serie",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          ),
        ),*/
      ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: title.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(title[index], page[index]);
        },
      ),
    );

    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.blur_on, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.code, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
    final topAppBar = AppBar(
      elevation: 0.1,
      centerTitle: true,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text("Flutter Exo App"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: makeBody,
      bottomNavigationBar: makeBottom,
    );
  }
}

