import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:plant_app/Model/ProductClass.dart';
import 'package:plant_app/Screen/PlantScreen.dart';
import 'Details.dart';

class Overview extends StatefulWidget {
  final Product obj;
  const Overview(this.obj);
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.green,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20),
                child: Container(
                  alignment: Alignment.topLeft,

                  height: ScreenHeight * 0.05,
                  width: ScreenWidth,
                  // color: Colors.black,
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_florist,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "greenery nyc",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListTile(
                  title: Text(
                    "Product",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 35),
                  ),
                  subtitle: Text(
                    "Overview",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 35),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: ScreenHeight * 0.05,
                width: ScreenWidth,
                // color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                        "https://cdn2.iconfinder.com/data/icons/nautical/32/water_drop-256.png",
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Water",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        widget.obj.wat,
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: ScreenHeight * 0.05,
                width: ScreenWidth,
                // color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                        "https://cdn1.iconfinder.com/data/icons/weather-vol-02-3/32/temperature-thermometer-humidity-rainfall-measurement-precipitation-forecast-256.png",
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Humidity",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        widget.obj.humidity,
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: ScreenHeight * 0.05,
                width: ScreenWidth,
                // color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                        "https://cdn3.iconfinder.com/data/icons/planting-line-set/64/seedling-01-256.png",
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Size",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        widget.obj.size,
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 58,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, bottom: 10),
                child: Container(
                  width: 380,
                  height: 70,
                  decoration: new BoxDecoration(
                    color: Colors.black12,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(60.0),
                      topLeft: const Radius.circular(60.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 10),
                        child: Container(
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 80),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Center(
                            child: Text(
                              "Delivery Information",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, bottom: 10),
                child: Container(
                  width: 380,
                  height: 70,
                  decoration: new BoxDecoration(
                    color: Colors.black12,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(60.0),
                      topLeft: const Radius.circular(60.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 10),
                        child: Container(
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 80),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Center(
                            child: Text(
                              "Return Policy",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Container(
                  height: ScreenHeight * 0.09,
                  width: ScreenWidth,
                  alignment: Alignment.bottomLeft,
                  //color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      Details(widget.obj)));
                        },
                        child: Icon(
                          Icons.arrow_downward_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 180.0),
                        child: Stack(
                          children: [
                             Container(

                              alignment: Alignment.bottomRight,
                              height: ScreenHeight * 0.20,
                              width: ScreenWidth * 0.40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(37),
                                    topLeft: Radius.circular(37),
                                  ),
                                  color: Colors.black),
                              child: Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                                size: 47,
                              ),


                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(child: Text("Add to basket",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                            )

                          ],

                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
        ));
  }
}
