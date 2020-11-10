import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/Model/ProductClass.dart';

import 'Overview.dart';

class Plant extends StatefulWidget {
  final Product obj;
  const Plant(this.obj);

  @override
  _PlantState createState() => _PlantState();
}

class _PlantState extends State<Plant> {
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
              Container(
                alignment: Alignment.topLeft,
                color: Colors.white,
                height: ScreenHeight * 0.05,
                child: IconButton(
                  icon: Image.network(
                    "https://www.seekpng.com/png/detail/155-1554127_arrow-back-android-back-button-png.png",
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),

                // width: 100,
              ),
              Column(
                children: [
                  Container(
                    height: ScreenHeight * 0.75,
                    width: ScreenWidth,
                    //  color: Colors.green,

                    child: Stack(
                      children: [
                        Container(
                          height: ScreenHeight * 0.73,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(70.0))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: ScreenHeight * 0.40,
                          width: ScreenWidth * 0.90,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 35.0),
                            child: RichText(
                                text: TextSpan(
                                    text: widget.obj.name,
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 88.0),
                          child: Container(
                            height: ScreenHeight * 0.05,
                            width: ScreenWidth * 0.6,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: RichText(
                                  text: TextSpan(
                                      text: widget.obj.subtitle,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 125),
                          child: Container(
                            height: ScreenHeight * 0.09,
                            width: ScreenWidth * 0.40,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: RichText(
                                  text: TextSpan(
                                      text: widget.obj.price,
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 220),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 140.0, left: 30),
                                      child: Container(
                                        height: 70,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          color: Color(0xFF18D191),
                                        ),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: ScreenHeight * 0.38,
                                width: ScreenWidth * 0.70,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 100.0),
                                  child: Image.network(
                                    widget.obj.image,
                                    // width: 900,
                                    // height: 600,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  //alignment: AlignmentDirectional.topStart,

                  height: ScreenHeight * 0.06,
                  width: ScreenWidth * 0.85,
                  //  color: Colors.black,
                  child: Text("Planting",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ))),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Container(
                      height: ScreenHeight * 0.15,
                      width: ScreenWidth * 0.28,
                      child: RaisedButton(
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              widget.obj.water,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: ScreenHeight * 0.15,
                    width: ScreenWidth * 0.28,
                    child: RaisedButton(
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.obj.sunshine,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              Overview(widget.obj)));
                },
                  child: Icon(Icons.arrow_drop_down,size: 30,))
            ],
          ),
        ),
      ),
    );
  }
}
