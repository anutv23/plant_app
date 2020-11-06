import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:plant_app/Model/ProductClass.dart';
import 'package:plant_app/Screen/PlantScreen.dart';


class ProductOverview extends StatefulWidget {
 final Overview obj;
  const ProductOverview(this.obj);
  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: SingleChildScrollView(

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0,left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Image.network("https://i.pinimg.com/originals/3c/62/f3/3c62f3fa99dafdaadad018ca88e00dd8.gif",
                  scale: 25,),
                  SizedBox(width: 10,),
                  Text("greenery nyc",style: TextStyle(fontSize: 20,color: Colors.white),),
                ],
                ),


              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right:208.0,top: 20),
                child: Text("Product \noverview",style: TextStyle(color: Colors.white,fontSize: 39,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal :68.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [

                    Expanded(child: Icon(Icons.account_circle_outlined,size: 25,color: Colors.white60,)),
                 SizedBox(width: 20,),
                    Text("water",
                    style: TextStyle(fontSize: 25,color: Colors.white60),),
                   SizedBox(width: 10,),
                    Text("widget.obj.wat",
                      style: TextStyle(fontSize: 25,color: Colors.white60),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,

                children: [

                  Icon(Icons.account_circle_outlined,size: 25,color: Colors.white60,),
               //     SizedBox(width: 10,),
                  Text("humidity",
                    style: TextStyle(fontSize: 25,color: Colors.white60),),
              //      SizedBox(width: 10,),
                  Text(" widget.obj.humidity ",
                    style: TextStyle(fontSize: 25,color: Colors.white60),),
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal :58.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [

                    Icon(Icons.account_circle_outlined,size: 25,color: Colors.white60,),
                  //  SizedBox(width: 10,),
                    Text("size",
                      style: TextStyle(fontSize: 25,color: Colors.white60),),
                    SizedBox(width: 40,),
                    Text("widget.obj.size  ",
                      style: TextStyle(fontSize: 25,color: Colors.white60),),
                  ],
                ),
              ),

            ],
          ),


        ),
      ),

    );
  }
}
