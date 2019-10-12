import 'package:flutter/material.dart';

class GreeneryPage extends StatefulWidget {

  GreeneryPage({Key key, this.title,
    this.firstColor,
    this.secondColor,
    this.price,
    this.productImage}) : super(key: key);

  final String title;
  final Color firstColor;
  final Color secondColor;
  final String price;
  final Image productImage;
  @override
  GreeneryState createState() => GreeneryState();
}


class GreeneryState extends State<GreeneryPage> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  void initState(){
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    )..addListener(()=> setState((){} ));

    animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(animationController);

    animationController.forward();
  }

  List<int> Listprice = [
   50,
  ];
  var price = 0;
  var quantity = 0;

  @override
  Widget build(BuildContext context) {
    var greenColor = widget.firstColor;
    var darkGreenColor = widget.secondColor;
    var Fprice= widget.price;
    var productImage = widget.productImage;


    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(108.0)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Icon(Icons.arrow_back),
                    SizedBox(height: 8.0),
                    Container(
                      width: 300.0,
                      child: Text(
                        widget.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32.0),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      '10" Nursery Pot',
                      style: TextStyle(color: Colors.black45),
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text('\$',
                              style: TextStyle(
                                  color: greenColor,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(width: 4.0),
                        Text('${Fprice}',
                            style: TextStyle(
                                color: greenColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 52.0)),
                      ],
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                ));
                          },
                          backgroundColor: greenColor,
                          child: DragTarget(
                              builder: (context,List<int> accepted, rejected){
                                print("--$accepted");
                                return Icon(Icons.shopping_cart);
                              },
                            onWillAccept: (d){
                                return true;
                            },
                            onAccept: (data){
                              print(data);
                               setState(() {
                                price=price + data;
                                price.toString();
                                quantity++;
                                if(price == 200){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailsScreen())
                                  );
                                }
                                animationController.forward();
                              });
                            },
                          )
                        ),
                        Container(
                          width: 100.0,
                          child: Draggable(
                            data: 50,
                              child: Container(
                                width: 100.0,
                                child: widget.productImage,
                              ),
                              feedback: Container(
                                width: 100.0,
                                child: widget.productImage,
                              ),
                          )
                        )
                      ],
                    ),
                    SizedBox(height: 16.0)
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 2.0),
                  Text('Planting', style: TextStyle(color: Colors.white)),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width / 2 - 50,
                        decoration: BoxDecoration(
                            color: darkGreenColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32.0),
                                topRight: Radius.circular(32.0))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FadeTransition(
                                    child: Text(
                                      '${price}',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0),
                                    ),
                                    opacity: animation),
                                SizedBox(width: 8.0),
                                Text(
                                  '\$',
                                  style: TextStyle(color: Colors.white54),
                                )
                              ],
                            ),
                            Text(
                              'Prix Total',
                              style: TextStyle(color: Colors.white54),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width / 2 - 50,
                        decoration: BoxDecoration(
                            color: darkGreenColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32.0),
                                topRight: Radius.circular(32.0))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FadeTransition(
                                    opacity: animation,
                                    child: Text(
                                      '${quantity}',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0),
                                    ),
                                ),
                                SizedBox(width: 4.0),
                                Text(
                                  '',
                                  style: TextStyle(color: Colors.white54),
                                )
                              ],
                            ),
                            Text(
                              'Quantité',
                              style: TextStyle(color: Colors.white54),
                            )
                          ],
                        ),
                      ),
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

class DetailsScreen extends StatelessWidget {

  var greenColor = Color(0xff32a05f);
  var darkGreenColor = Color(0xff279152);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('greenery nyc',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.1,
                        fontSize: 22.0)),
                SizedBox(height: 12.0),
                Container(
                  width: 200.0,
                  child: Text(
                    'Product Overview',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 48.0),
                  ),
                ),
                SizedBox(height: 22.0),
                itemRow(Icons.star, 'water', 'every 7 days'),
                SizedBox(height: 12.0),
                itemRow(Icons.ac_unit, 'Humidity', 'up to 82%'),
                SizedBox(height: 12.0),
                itemRow(Icons.straighten, 'Size', '38" - 48"tdll'),
              ],
            ),
          ),
          SizedBox(height: 22.0),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                  color: darkGreenColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      bottomLeft: Radius.circular(32.0))),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Icon(Icons.add, color: Colors.white, size: 24.0),
                  SizedBox(width: 30.0),
                  Text(
                    'Delivery Information',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 22.0),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                  color: darkGreenColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      bottomLeft: Radius.circular(32.0))),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Icon(Icons.add, color: Colors.white, size: 24.0),
                  SizedBox(width: 40.0),
                  Text(
                    'Return Policy',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 80.0,
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                ),
                Container(
                    height: 80.0,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        color: Color(0xff2c2731),
                        borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(48.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(
                          'ajouter au panier',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  itemRow(icon, name, title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(width: 6.0),
            Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
        Text(title, style: TextStyle(color: Colors.white54, fontSize: 20.0))
      ],
    );
  }
}
