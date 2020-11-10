import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:plant_app/Model/ProductClass.dart';
import 'package:plant_app/Screen/HomeScreen.dart';
import 'PlantScreen.dart';
import 'Overview.dart';

class Details extends StatefulWidget {
  final Product obj;
  const Details(this.obj);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: ScreenHeight * 0.15,
              width: ScreenWidth,
              // color: Colors.black,
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: 240,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Container(
                      //alignment: Alignment.topRight,
                      height: ScreenHeight * 0.20,
                      width: ScreenWidth * 0.35,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )),
                      child: Center(
                          child: Text(
                        "Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 120.0),
              child: Image.network(
                widget.obj.leaf,
                height: ScreenHeight * 0.25,
                width: ScreenWidth * 0.50,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 208.0),
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                    text: 'Plant Details ',
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.obj.details),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 158.0),
              child: Image.network(
                widget.obj.pot,
                height: ScreenHeight * 0.25,
                width: ScreenWidth * 0.50,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(widget.obj.potdetails),

          ],
        ),
      ),
    );
  }


}
