import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant_app/Model/ProductClass.dart';
import 'package:plant_app/Screen/PlantScreen.dart';

class MyPlantApp extends StatefulWidget {


  @override
  _MyPlantAppState createState() => _MyPlantAppState();
}

class _MyPlantAppState extends State<MyPlantApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Spacer(flex: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 38.0, left: 5),
                child: Center(
                  child: Text(
                    "Green World Bazaar",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 30,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),

                      ),
                    ),

                    Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [

                    SizedBox(width: 10),
                    Expanded(
                        child: Text(
                      "By Plants",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white,),
                    )),
                    Text(
                      "View all",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 450,
                width: 400,
                child: GridView.builder(
                  //  physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                   // reverse: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2
                    ),
                    itemCount: productList.length,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder:(_)=>Plant(productList[index])));
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                  height: 160,
                                  width: 150,
                                  child: Image.network(
                                    productList[index].image,
                                    fit: BoxFit.fill,

                                  )),
                            ),
                            Text(
                              productList[index].name,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      );

                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
