import 'package:carocom/constant/listitem.dart';
import 'package:flutter/material.dart';

import 'Product/ProductInfo.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: Colors.white,
      body: Container(

        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child:ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: list_item.length,
            itemBuilder: (context, index) {
              return Car(

                Car_name: list_item[index]["name"],
                Car_pic: list_item[index]["pic"],
                Car_price: list_item[index]["price"],
              );
            },
          ),

        ),
      ),





    );
  }
}

class Car extends StatelessWidget {
  final Car_name;
  final Car_pic;
  final Car_price;

  Car(
      {
        this.Car_name,
        this.Car_price,
        this.Car_pic,


      }
      );


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isfav = true;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) => ProductInfo()));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      height: 250,
                      width: size.width,
                      fit: BoxFit.cover,
                      image: AssetImage(Car_pic),
                    ),
                  ),
                ),
                Positioned(
                  right: 30 / 2,
                  top: 30 / 2,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                      icon: isfav
                          ? Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                      )
                          : Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.black,
                      ),
                      onPressed: () {
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  Car_price,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  Car_name,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
